package mypack;

/**
 * Created by user on 4/5/19.
 */
import java.io.IOException;
import java.util.*;


import javax.websocket.*;

import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;



@ServerEndpoint("/actions/{clientId}")
public class EchoServer {


        /**
         * @OnOpen allows us to intercept the creation of a new session.
         * The session class allows us to send data to the user.
         * In the method onOpen, we'll let the user know that the handshake was
         * successful.
         */
        public final static HashMap<Integer,mychatuser> chats = new HashMap<>();

        mychatuser getchat(Session ses){
                for (int ido:chats.keySet()){
                        mychatuser cho=chats.get(ido);
                        if (cho!=null&&cho.ses!=null){
                                if (cho.ses.equals(ses)) return cho;
                        }
                }
                return null;
        }

        void myopen(mychatuser ch,int id){

                ch.id=id;
                sendring2ops(id);

                chats.put(id,ch);
                try {
                        ch.ses.getBasicRemote().sendText("id\n"+id);

                } catch (Exception e) {
                        e.printStackTrace();

                }
        }
        int chatidd=0;
        synchronized int myopen(mychatuser ch){
                if (chats.size()==0){
                        chatidd++;


                        myopen(ch,chatidd);
                        return chatidd;

                }else
                        for (int i=0;i<1000;i++){
                                chatidd++;
                                if (chatidd>10000) chatidd=1;
                                if (chats.get(chatidd)==null){


                                        myopen(ch,chatidd);
                                        return chatidd;
                                }
                        }
                return -1;
        }
        synchronized void ringda(String opid0,String id0){
              int opid=functions.str2int(opid0,-1);
              int id=functions.str2int(id0,-1);
                System.out.println("ringda=="+opid+"="+id);
              if (id==-1||opid==-1) return;
              mychatuser ch=chats.get(id);
              mychatuser opch=chats.get(opid);

              if (ch==null||opch==null) return;
              if (ch.opid>-1) return;

              ch.opid=opid;
              send2ch(opch,"newid\n"+id);

        }
        void send2ch(mychatuser ch,String txt){
                try {
                        System.out.println("send="+ch.id+"="+txt);
                        ch.ses.getBasicRemote().sendText(txt);
                } catch (Exception e) {
                        System.out.println(e.toString());

                };
        }
        void send2ch(String id0,String txt){
                 int id=functions.str2int(id0,-1);
                 if (id==-1) return;
                 mychatuser ch=chats.get(id);
                 if (ch==null) return;
                 send2ch( ch, txt);
        }
        void send2ch(int id,String txt){
                if (id==-1) return;
                mychatuser ch=chats.get(id);
                if (ch==null) return;
                send2ch( ch, txt);
        }
        void sendring2ops(int id){
                for (int ido:chats.keySet()){
                        mychatuser cho=chats.get(ido);
                        if (cho!=null&&cho.ses!=null){
                                try {
                                        cho.ses.getBasicRemote().sendText("ring\n"+id+"\nnew user");
                                        System.out.println("sendring "+id+" to "+cho.id);
                                } catch (Exception e) {
                                        System.out.println(e.toString());

                                };
                        }
                }
        }
        @OnOpen
        public void onOpen(@PathParam("clientId") String clientId, Session session){
        //public void onOpen(Session session){




                mychatuser ch=new mychatuser();ch.ses=session;
                if (clientId!=null&&clientId.equals("operator")) ch.type=mychatuser.operator;
                else ch.type=mychatuser.user;

                int id=myopen(ch);




                if (clientId==null)
                        System.out.println("onOpen:----------------------------------:" + session.getId()+"="+id);
                else
                        System.out.println("onOpen:----------------------------------:" + session.getId()+"="+id+"="+clientId);
                if (id==-1) {
                     try {
                             System.out.println("id=-1!!!!!!!!!!!!!!!!!!!!!session not open");
                             session.close();
                     } catch (IOException e) {
                             e.printStackTrace();

                     }
                }
        }

        synchronized void chatremove(mychatuser ch){
             if (ch.ses.isOpen()) {
                        try {
                                   ch.ses.close();
                      } catch (Exception e) {
                                  System.out.println(e.toString());
                      }
             }
             chats.remove(ch.id);
        }

        @OnClose
        public void onClose(Session session) {
                System.out.println("onClose::" +  session.getId());
                mychatuser ch=getchat(session);
                if (ch.type == mychatuser.operator){
                        for (int ido:chats.keySet()){
                                mychatuser cho=chats.get(ido);
                                if (cho!=null){
                                        if (cho.opid==ch.id) {
                                                cho.opid=-1;
                                                if (cho.ses.isOpen()) {
                                                        try {
                                                                cho.ses.close();
                                                        } catch (Exception e) {
                                                                System.out.println(e.toString());
                                                        }
                                                }
                                        }
                                }
                        }
                        chatremove(ch);
                }else{
                        int opid=ch.opid;
                        if (opid>0){
                                send2ch(opid,"closed\n"+ch.id);
                        }
                      chatremove(ch);
                }
        }

        @OnMessage
        public void onMessage(String message, Session session) {
                System.out.println("onMessage::From=" + session.getId() + " Message=" + message);

                String[] s2=message.split("\n");

                if (s2[0].equals("ringda")) ringda(s2[1],s2[2]);
                else if (s2[0].equals("txt")) {
                        if (s2[2].equals("0")) {
                                int myid = functions.str2int(s2[1], -1);
                                mychatuser mych=chats.get(myid);
                                if (mych==null) return;
                                send2ch(mych.opid,"usertxt\n"+s2[1]+"\n"+s2[3]);
                        }else  send2ch(s2[2],"optxt\n"+s2[3]);
                }

        }

        @OnError
        public void onError(Throwable t) {
                System.out.println("onError::" + t.getMessage());
        }


}
