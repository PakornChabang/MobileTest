*** Settings ***
Library    AppiumLibrary
Library    DebugLibrary
Library    String

#locator
Resource    ${CURDIR}/locator/${platform}/home_locator.robot 
Resource    ${CURDIR}/locator/${platform}/cart_locator.robot 

#setting
Variables    ${CURDIR}/setting/${platform}.yaml
Variables    ${CURDIR}/testdata/${platform}/testdata.yaml

#common
resource    ${CURDIR}/../keywords/common/common.robot
#page
resource    ${CURDIR}/../keywords/page/home_page.robot
resource    ${CURDIR}/../keywords/page/cart_page.robot
#feature
Resource    ${CURDIR}/../keywords/feature/cart_feature.robot
Resource    ${CURDIR}/../keywords/feature/home_feature.robot