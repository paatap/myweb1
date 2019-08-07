<%
    System.out.println("getdata");
    mypack.functions.printvars(request);
%>
{
"path": "intro",
"messages": [{
"text": "What’s up kuku!",
"author": "ConvoJs"
},
{
"text": "What is 11 + 1?",
"author": "ConvoJs"
}
],
"choices": [
{
"path": "block1",
"text": "Meh",
"type": "input"
},
{
"path": "block1",
"text": "Meh",
"type": "button",
"expected": "2",
"pathTrue": "block1-correct",
"pathFalse": "block1-wrong"
}
]
}