// Run this example by adding <%= javascript_pack_tag 'hello_typescript' %> to the head of your layout file,
// like app/views/layouts/application.html.erb.

console.log('Hello world from typescript');
class User {
  public age: number;
  public familyName: string;
  public givenName: string;
  constructor(familyName: string, givenName: string, age: number) {
    this.age = age;
    this.familyName = familyName;
    this.givenName = givenName;
  }
}

const user = new User('海老原', '賢次', 44); // 名前と年齢は適当に

const contentsElem = document.getElementById('contents');
if (!!contentsElem) {
  contentsElem.innerText = `${user.familyName} ${user.givenName}`;
}
