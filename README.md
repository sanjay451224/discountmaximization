# discountmaximization
Discount maximization for Customers. The customer’s objective is to create a pair of 2 items so that the discount is maximized.


############################################## how to run Project on docker container step by step procedure  ############################################
step 1 :- First you need to build the project 
step 2 :- Mendatory you have docker install in your machine to run this project if you don't have docker then you should install docker 
step 3 :- Build over jar file on docker container 
          command : docker build -t discountmaximization .
          for above command create image for over project we can check that if image are created or not 
          command : docker images
step 4 :- After creation of image then after run the 
          command : docker run -d -p 8080:8080 discountmaximization
          it will create the container and run over project on top of the container 
step 5 :- open postmain 
Request body :-
              request GET 'http://localhost:8080/product/get-discount-and-payable' \
               --header 'Content-Type: application/json' \
              --data '{
                        "priceList" :[10, 20, 30, 40, 50,50, 60]
                      }'
Response Body : -
                {
                   "Discounted Items: ": [50, 40, 20],
                   "Payable Items: ": [60, 50, 30, 10]
                }
