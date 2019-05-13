function userIsMobile() {
  const screenHeight = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
  const screenWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

  if(screenHeight < 768 && screenWidth < 1080) {
    return true;
  }
}

export { userIsMobile }
