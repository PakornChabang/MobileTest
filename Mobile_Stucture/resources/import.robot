*** Settings ***
Library    AppiumLibrary

#locator
Resource    ${CURDIR}/locator/${platform}/home_locator.robot 
Resource    ${CURDIR}/locator/${platform}/cart_locator.robot 

#setting
Variables    ${CURDIR}/setting/${platform}.yaml

#common
resource    ${CURDIR}/../keywords/common/common.robot
#page
resource    ${CURDIR}/../keywords/page/home_page.robot
resource    ${CURDIR}/../keywords/page/cart_page.robot
#feature
Resource    ${CURDIR}/../keywords/feature/cart_feature.robot

