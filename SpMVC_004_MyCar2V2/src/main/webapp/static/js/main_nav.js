document.addEventListener("DOMContentLoaded", () => {
  const nav = document.querySelector("nav.main");
  const nav_login = document.querySelector("li.login");
  const nav_join = document.querySelector("li.join");

  /*
    이벤트핸들러의 매개변수(e)
    e.currentTarget 과 e.target 속성이 기본으로 포함되어있다
    이때 e.currentTarget 은 이벤트핸들러가 부착된 tag(nav.main) 이고
    e.target 은 이벤트버블링에 의해 가장 안쪽에서 실제 event 가 적용되는 tag(li)
    */
  const navClickHnadler = (e) => {
    const current = e.currentTarget; // nav.main
    const target = e.target; // li

    if (target.tagName === "LI") {
      const targetClassName = target.className;
      let URL = `${rootPath}` + targetClassName;
      const USER_URL = "login join mypage logout";
      if (targetClassName === "home") {
        URL = `${rootPath}`;
        //   } else if (targetClassName === "mycar") {
        //     URL += targetClassName
        //   } else if (targetClassName === "tacho") {
        //     alert("tacho");
        //   } else if (targetClassName === "login") {
        //     alert("Nav 클릭한 login");
        //   }
      } else if (USER_URL.indexOf(targetClassName) > -1) {
        URL = `${rootPath}user/` + targetClassName;
        /*
        문자열.indexOf("찾는문자열")
        문자열 내에 찾는문자열이 있으면 0 이상의 위치값을 return
        없으면 -1 을 return 
        
        문자열.search("찾는문자열")
        정규표현식으로 문자열찾기 가능
        */
      }
      document.location.href = URL;
    }
  };
  // 이벤트버블링을 역으로 활용하여 한개의 이벤트를 설정하여 할일들 처리하기
  nav?.addEventListener("click", navClickHnadler);

  // 개별적인 LI tag 에 클릭이벤트를 설정하여 nav 를 선택했을때 할일을 지정
  //   nav_login?.addEventListener("click", () => {
  //     alert("login 나 클릭");
  //   });
  //   nav_login?.addEventListener("click", () => {
  //     alert("login 나 2 클릭");
  //   });
  //   nav_join?.addEventListener("click", () => {
  //     alert("join");
  //   });
});

/*
0, "", undefined, NaN, null 값이 if() 명령을 만나면
이 값들은 fasle 로 취급된다

const 변수 = 0;
if(변수) {
    console.log(`이 값은 0이 아님 ${변수}`)
} else {
    console.log(`이 값은 false 로 취급 ${변수}`)
}

const 변수1 = ""
const 변수2;
const 변수3 = 0;.0
const 변수 = 변수1 && 변수2 && 변수3 && "몰라"
*/
