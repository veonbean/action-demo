<template>
  <div class="header">
    <div class="logo">
      Logo
    </div>
    <el-menu class="menu" mode="horizontal" :default-active="activeIndex">
      <template v-for="(item, index) in menuItems">
        <el-menu-item :key="index" :index="item.index">
          {{ item.name }}
        </el-menu-item>
      </template>
    </el-menu>
    <el-dropdown class="dropdown" @command="handleCommand">
      <div class="user">
        <i class="el-icon-user-solid" />
        &nbsp;
        {{ 'hahaha' }}
      </div>
      <el-dropdown-menu slot="dropdown">
        <el-dropdown-item icon="el-icon-info" command="info">
          个人中心
        </el-dropdown-item>
        <el-dropdown-item icon="el-icon-close" command="logout">
          退出
        </el-dropdown-item>
      </el-dropdown-menu>
    </el-dropdown>
    <div class="search-bar">
      <el-input v-model="search" suffix-icon="el-icon-search" @change="search" />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: ''
    }
  },
  data () {
    return {
      key: '',
      menuItems: [
        {
          name: '选项1',
          index: 'op-1'
        },
        {
          name: '选项2',
          index: 'op-2'
        }
      ],
      activeIndex: 'op-1',
      search: ''
    }
  },
  methods: {
    logout () {
      console.log('logout')
    },
    handleCommand (command) {
      return this[command]()
    },
    info () {
      console.log('info')
    }
  }
}
</script>

<style lang="less" scoped>
.header {
  width: 100vw;
  box-shadow: 20px 0 20px #EAEAEA;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 90;
  background-color: #fff;
  border-radius: 0 0 8px 8px;
  .logo {
    width: 8vw;
    height: 100%;
    background-color: #EEE;
    border-radius: 4px;
    float: left;
    text-align: center;
  }
  .menu {
    width: 32vw;
    float: left;
    margin-left: 2vw;
    li {
      width: 5vw;
    }
  }
  .dropdown {
    float: right;
    cursor: pointer;
    min-width: 2vw;
    .user {
      text-align: left;
    }
  }
  .search-bar {
    float: right;
    width: 14vw;
    height: 100%;
    margin-right: 2vw;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
}
</style>
