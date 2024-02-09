<template>
  <div>
    <v-row>
      <v-container style="height: auto">
        <v-row>
          <v-col cols="6">
            <v-card class="custom-card-height">
              <v-container fluid fill-height>
                <v-col>
                  <h1>จำนวนรถที่ลงทะเบียนทั้งหมด</h1>
                  <h1>500 คัน</h1>
                </v-col>
              </v-container>
            </v-card>
          </v-col>
          <v-col cols="6">
            <v-card class="custom-card-height">
              <v-card-text>
                <v-responsive>
                  <apexchart
                    width="450"
                    :options="chartOption_one"
                    :series="chartSeries_one"
                    type="donut"
                  ></apexchart>
                </v-responsive>
              </v-card-text>
            </v-card>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="3">
            <v-card class="custom-card-height">
              <v-container fluid fill-height>
                <v-col>
                  <h1>จำนวนรถเข้า</h1>
                  <h1>มหาลัยทั้งหมดวันนี้</h1>
                  <h1>100 คน</h1>
                </v-col>
              </v-container>
            </v-card>
          </v-col>
          <v-col cols="3">
            <v-card class="custom-card-height">
              <v-container fluid fill-height>
                <v-col>
                  <h1>จำนวนรถออก</h1>
                  <h1>มหาลัยทั้งหมดวันนี้</h1>
                  <h1>100 คน</h1>
                </v-col>
              </v-container>
            </v-card>
          </v-col>
          <v-col cols="6">
            <v-card class="custom-card-height">
              <v-card-text>
                <v-responsive>
                  <apexchart
                    width="450"
                    :options="chartOption_two"
                    :series="chartSeries_two"
                    type="donut"
                  ></apexchart>
                </v-responsive>
              </v-card-text>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </v-row>
    <v-data-table
      :headers="headers"
      :items="desserts"
      item-value="name"
      hide-default-footer
    >
      <template v-slot:item="{ item }">
        <tr>
          <td>{{ item.name }}</td>
          <td>{{ item.plate }}</td>
          <td>{{ item.type }}</td>
          <td>{{ item.image }}</td>
        </tr>
      </template>
    </v-data-table>
  </div>
</template>

<script>
import VueApexCharts from 'vue-apexcharts'

export default {
  components: {
    apexchart: VueApexCharts,
  },
  data() {
    return {
      chartOption_one: {
        labels: ['รถยนต์', 'รถจักรยานยนต์'],
        colors: ['#9C27B0', '#673AB7'],
      },
      chartSeries_one: [13, 43],
      chartOption_two: {
        labels: ['รถยนต์', 'รถจักรยานยนต์'],
        colors: ['#F44336', '#E91E63'],
      },
      chartSeries_two: [44, 55],
      headers: [
        {
          text: 'ล่าสุด',
          align: 'start',
          sortable: false,
          key: 'last',
        },
        { text: 'ทะเบียน', key: 'plate' },
        { text: 'ประเภท', key: 'type' },
        { text: 'รูปภาพ', key: 'image' },
      ],
      desserts: [
        {
          name: 'xx/xx/xxxx(19:30)',
          plate: 'จจ 1222',
          type: 'รถยนต์',
          image: 24,
        },
        {
          name: 'xx/xx/xxxx(19:20)',
          plate: 'จจ 1221',
          type: 'มอไซค์',
          image: 37,
        },
        {
          name: 'xx/xx/xxxx(19:15)',
          plate: 'จจ 1234',
          type: 'รถยนต์',
          image: 23,
        },
        {
          name: 'xx/xx/xxxx(19:10)',
          plate: 'จจ 1222',
          type: 'มอไซค์',
          image: 67,
        },
        {
          name: 'xx/xx/xxxx(19:00)',
          plate: 'จจ 1222',
          type: 'รถยนต์',
          image: 49,
        },
      ],
    }
  },
}
</script>

<style scoped>
.custom-card-height {
  height: 100%;
}

h1 {
  text-align: center;
}
</style>
