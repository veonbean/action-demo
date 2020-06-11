<template>
  <div>
    <div class="card-bar">
      <el-carousel type="card" :interval="3000" height="200px" arrow="never">
        <el-carousel-item v-for="(item, index) in imgList" :key="index">
          <img :src="item.img" width="100%">
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>
</template>

<script>
export default {
  components: {

  },
  data () {
    return {
      imgList: [
        {
          img: '//cdnmusic.migu.cn/tycms_picture/20/06/156/200604093816353_1400x350_2484.jpg',
          name: 'guangliang'
        },
        {
          img: '//cdnmusic.migu.cn/tycms_picture/20/06/160/200608220928318_1400x350_3287.jpg',
          name: 'nana'
        },
        {
          img: '//cdnmusic.migu.cn/tycms_picture/20/06/160/200608220838819_1400x350_3134.jpg',
          name: 'xiaojingteng'
        },
        {
          img: '//cdnmusic.migu.cn/tycms_picture/20/06/160/200608094958100_1400x350_9546.jpg',
          name: 'SNH'
        },
        {
          img: '//cdnmusic.migu.cn/tycms_picture/20/06/160/200608100247391_1400x350_3792.jpg',
          name: 'ciwei'
        },
        {
          img: '//cdnmusic.migu.cn/tycms_picture/20/03/91/200331100023281_1400x350_7945.jpeg',
          name: 'migu'
        },
        {
          img: '//cdnmusic.migu.cn/tycms_picture/20/03/79/200319225515423_1400x350_5570.jpg',
          name: 'migu2'
        }
      ]
    }
  }
}
</script>

<style lang="less">
.card-bar {
  width: 100%;
  height: 300px;
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
  .el-carousel__item {
    opacity: 0.5;
    border-radius: 8px;
    img {
      object-fit: cover;
    }
  }
  .is-active {
    opacity: 1;
    box-shadow: 0 20px 20px #eaeaea;
  }
}
</style>
