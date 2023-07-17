document.addEventListener("DOMContentLoaded", () => {
  // 주석문
  const image_box = document.querySelector("div.image_list");
  const image_delete = (e) => {
    const btn_delete = e.target;
    if (btn_delete.tagName === "SPAN") {
      const seq = e.target.dataset.seq;
      if (confirm(`${seq} 사진을 삭제할거냐?`)) {
        document.location.href = `${rootPath}/image_delete?seq=${seq}`;
      }
    }
  };
  image_box.addEventListener("click", image_delete);
});
