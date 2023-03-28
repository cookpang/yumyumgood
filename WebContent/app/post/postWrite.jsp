<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>postWrite</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/postWrite.css">
  <script src="https://kit.fontawesome.com/c6992f5b12.js" crossorigin="anonymous"></script>
</head>

<body>

  <div class="globar-wrap">

    <div class="write-box-globar-wrap">
      <div class="write-box-container">
        
        <form action="#" method="post" class="write-box-form" enctype="multipart/form-data">
          <div class="wirte-box-wrap">

            <!--작성창 상단 -->
            <div class="write-box-header">

              <div class="cancel-btn">
                <!-- 뒤로가기 화살표 js로 처리-->
                <i class="fa-solid fa-arrow-left"></i>
              </div>

              <div class="write-box-header-content">
                <h3> 레시피 등록 </h3>
              </div>
              <div class="write-box-header-share">
                <!-- 게시물 최종 작성버튼 -->
                <!-- submit 버튼으로 변경 -->
                <button type="submit" class="share-button ">
                  공유하기
                </button>
              </div>

            </div>


            <div class="write-box-content">

              <!-- 이미지 업로드칸(파일추가되면 미리보기로)-->
              <div class="image-upload-wrap">
                <label for="file" class="file-label">
                  <div class="img-upload-section">

                    <div class="image-upload-guide">

                      <h1><i class="fa-regular fa-image"></i></h1>
                      <br> <br> <br>
                      <h2 class="file-input-msg">이곳을 클릭해 사진을 선택하세요</h2>
                      <input type="file" name="file" class="file-input" accept=".jpg, .jpeg, .png" multiple>
                    </div>
                  </div>
                </label>

              </div>


              <!-- 미리보기(파일이 추가되면 나타나기) -->
              <div class="image-preview-wrap">
                <div class="preview-img-controller-box">

                  <ul class="preview-list">

                    <!-- 이전사진으로 넘기기 아이콘 -->
                    <div class="wirte-box-imgs-prev">
                      <button type="button" class="img-prev-next-button">
                        <i class="fa-solid fa-circle-chevron-left"></i>
                      </button>
                    </div>


                    <!-- 다음사진으로 넘기기 아이콘 -->
                    <div class="wirte-box-imgs-next">
                      <button type="button" class="img-prev-next-button">
                        <i class="fa-solid fa-circle-chevron-right"></i>
                      </button>
                    </div>

                    <li>
                      <img src="" alt="미리보기 이미지" class="preview-image">
                      <div class="btn-box">
                        <button type='button' class='img-cancel-btn' data-name='${files[i].name}'>X</button>
                      </div>
                    </li>


                  </ul>

                </div>


              </div>



              <!-- 사용자작성 게시물 부분 -->
              <div class="write-box-content-wrap">


                <!-- 사용자 프로필사진, 아이디 -->
                <div class="wirte-box-main-user-info">
                  <div class="write-box-user-profile-img">
                    <!-- 임시 프로필사진 -->
                    <img src="${pageContext.request.contextPath}/assets/img/testImg/test5.jpg" alt="프로필사진" class="profile-img">
                  </div>
                  <div class="write-box-user-id">

                    <!-- 임시 사용자아이디 -->
                    <h3>cookpang</h3>
                  </div>

                </div>


                <!-- 레시피 필요한 재료 -->
                <div class="write-box-main-content-wrap">
                  <div class="write-box-main-content">
                    <div class="content-wrap">
                      레시피 제목 <input type="text" class="content-title" placeholder="예) 쇠고기 미역국 끓이기">
                    </div>
                    <div class="content-wrap">
                      레시피 카테고리 선택 <br>


                      <!-- 카테고리 체크박스 -->
                      <!-- value의 #에 카테고리 번호or이름 넣기 -->
                      <div class="categories-wrap">
                        <ul class="categories">
                          <label>
                            <li class="category-list">
                              밥요리<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              국&탕<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              찌개&전골<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              볶음요리<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                        </ul>
                      </div>

                      <div class="categories-wrap">
                        <ul class="categories">
                          <label>
                            <li class="category-list">
                              밑반찬<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              찜&조림<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              야식&술안주<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              면요리<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                        </ul>
                      </div>
                      <div class="categories-wrap">
                        <ul class="categories">
                          <label>
                            <li class="category-list">
                              샐러드<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              김밥&초밥<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              튀김<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              스파게티<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                        </ul>
                      </div>
                      <div class="categories-wrap">
                        <ul class="categories">
                          <label>
                            <li class="category-list">
                              간식&분식<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              디저트<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              구이<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                          <label>
                            <li class="category-list">
                              토스트/샌드위치<input type="checkbox" class="category" name="categorys" value="#">
                            </li>
                          </label>
                        </ul>
                      </div>

                    </div>

                    <!-- 재료 부분 -->
                    <div class="ingredient-wrap">
                      <h4>재료</h4>
                      <div class="ingredient-items-container">

                        <div class="ingredient-item">
                          <ul>
                            <li>
                              <input type="text" name="ingredientTitle" class="ingredient-title"
                                placeholder="재료묶음 이름 예) 기본재료">
                              <h5 class="ingredient-guide-msg  msg1">재료추가/삭제</h5>
                            </li>

                            <div class="ingredient-element">

                              <li class="ingredient-name-li">
                                <input type="text" name="ingredientName" class="ingredient-name"
                                  placeholder="재료이름 예)양배추 ">
                              </li>

                              <li class="ingredient-quantity-li">
                                <input type="text" name="ingredientQuantity" class="ingredient-quantity"
                                  placeholder="재료 양 예) 1/2개">
                              </li>

                              <!-- 재료 추가버튼 -->
                              <div class="element-edit-buttons">
                                <button type="button" class="element-plus">
                                  <i class="fa-solid fa-circle-plus"></i>
                                </button>

                                <button type="button" class="element-minus">
                                  <i class="fa-solid fa-circle-minus"></i>
                                </button>
                              </div>

                            </div>

                          </ul>

                        </div>
                        
                      </div>

                      <!-- 재료 묶음추가버튼 -->
                      <div class="item-edit-buttons">
                        <h5 class="ingredient-guide-msg">재료 묶음 추가</h5>
                        <button type="button" class="item-plus">
                          <i class="fa-solid fa-circle-plus"></i>
                        </button>

                        <button type="button" class="item-minus">
                          <i class="fa-solid fa-circle-minus"></i>
                        </button>
                      </div>

                    </div>



                    <!-- 본문 내용 -->
                    <textarea name="write-content" id="content" required placeholder="레시피를 작성해주세요"></textarea>


                  </div>
                </div>

              </div>

            </div>


          </div>

        </form>

      </div>

    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="${pagetContext.request.contextPath}/assets/js/postWrite.js"></script>
</body>

</html>