class var_testing(

) {

  # test methods
  var_testing::show_var { 'test when var=undef':
    var => undef,
  }

  var_testing::show_var { 'test when var=""':
    var => '',
  }

  var_testing::show_var { 'test when var=true':
    var => true,
  }

  var_testing::show_var { 'test when var=false':
    var => false,
  }

  var_testing::show_var { 'test when var=[]':
    var => [],
  }

  var_testing::show_var { 'test when var={}':
    var => {},
  }

  var_testing::show_var { 'test when var=0':
    var => 0,
  }

  var_testing::show_var { 'test when var=1':
    var => 1,
  }

}
