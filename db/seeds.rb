# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@denmark_studynumbers = ["C004597","C004784","C004925","C005102","C005113","C005120","C005140","C005236","C005320","C005349","C005451","C005502","C005514","C005519","C005732","C005789","C005943","C006083","C006110","C006165","C006182","C006300","C006438","C006485","C006533","C006572","C006575","C006607","C006648","C006653","C006734","C006845","C006846","C006851","C006859","C006880","C006881","C006893","C006978","C007012","C007030","C007035","C007048","C007054","C007063","C007069","C007122","C007142","C007155","C007161","C007186","C007188","C007202","C007250","C007255","C007337","C007345","C007347","C007352","C007393","C007407","C007422","C007475","C007488","C007510","C007511","C007519","C007533","C007549","C007559","C007570","C007586","C007611","C007638","C007666","C007688","C007711","C007733","C007737","C007751","C007755","C007777","C007811","C007832","C007851","C007852","C007864","C007885","C007922","C007934","C007939","C007966","C007987","C008014","C008045","C008050","C008071","C008087","C008097","C008106","C008226","C008234","C008242","C008249","C008271","C008288","C008318","C008347","C008351","C008356","C008392","C008484","C008503","C008526","C008530","C008573","C008582","C010003","C010259","C010267","C010343","C010415","C010489","C010500","C010514","C010524","C010528","C010551","C010580","C010582","C010584","C010612","C010617","C010629","C010633","C010658","C010721","C010736","C010742","C010790","C010826","C010827","C010839","C010863","C010946","C010960","C010980","C010987","C011033","C011038","C011065","C011071","C011100","C011144","C011216","C020076","C020097","C020109","C020134","C020138","C020143","C020144","C020150","C020209","C030128","C030155","C030175","C030176","C030198","C030230","C030256","C030263","C030287","C030330","C030340","C030361","C030367","C030377","C030388","C030409","C030429","C030437","C030653","C030654","C030660","C030661","C030664","C030677","C030715","C030740","C030743","C030758","C030764","C030774","C030775","C030796","C030801","C030816","C031045","C031156","C031414","C031434","C031479","C031494","C031509","C031518","C031525","C031547","C031565","C031587","C031594","C031596","C031621","C031627","C031655","C031661","C031694","C031707","C031726","C031755","C031758","C031766","C031798","C032027","C040304","C040349","C040358","C040468","C040617","C040729","C040757","T003471","T003556","T003590","T003610","T003680","T003691","T003726","T003781","T003837","T003907","T003978","T003979","T004062","T004099","T004118","T004212","T004241","T004252","T004304","T004335","T004360","T004439","T004440","T004446","T004477","T004673","T004822","T004850","T004876","T004941","T004989","T005093","T005115","T005209","T005263","T005287","T005318","T005359","T005559","T005571","T005572","T005744","T005776","T005778","T005868","T005876","T005889","T005938","T005967","T005985","T006015","T006060","T006068","T006141","T006352","T006497","T006579","T006617","T006830","T006840","T006916","T006983","T007413","T010026","T010030","T010045","T010058","T010067","T010069","T010070","T010078","T010089","T010090","T010101","T010102","T010140","T010178","T010204","T010228","T010234","T010257","T010260","T010271","T010274","T010334","T010361","T010366","T010403","T010460","T010488","T010550","T020001","T020045","T020063","T020065","T030004","T030033","T030048","T030057","T030068","T030082","T030087","T030090","T030105","T030109","T030123","T030127","T030481","T030492","T030520","T030563","T030575","T030594","T030599","T030606","T030618","T030964","T030975","T030979","T031176","T031209","T031212","T031225","T031248","T031318","T031362","T040016","T040103","T040133"]
@denmark_studynumbers.each do |studynumber|
  Patient.create(studynumber: studynumber, country: 1)
end

@finland_studynumbers = ["T-00071","T-00117","T-00180","T-00220","T-00229","T-00281","T-00407","T-00444","T-00477","T-00481","T-00487","T-00511","T-00516","T-00522","T-00536","T-00553","T-00563","T-00580","T-00623","T-00644","T-00736","T-00739","T-00792","T-00874","T-00997","T-01048","T-01057","T-01135","T-01228","T-01277","T-01389","T-01429","T-01488","T-01578","T-01592","T-01596","T-01619","T-01653","T-01691","T-01808","T-01860","T-01861","T-01881","T-01903","T-01929","T-01954","T-02061","T-02063","T-02113","T-02144","T-02219","T-02266","T-02270","T-02277","T-02291","T-02308","T-02358","T-02359","T-02373","T-02378","T-02412","T-02532","T-02625","T-02664","T-02834","T-02871","T-02924","T-03074","T-03075","T-03157","T-03245","T-03310","T-03368","T-03453","T-03476","T-03616","T-03650","T-03654","T-03655","T-03725","T-03735","T-03739","T-03758","T-03788","T-03812","T-03820","T-03827","T-03942","T-03959","T-03970","T-03992","T-03994","T-04042","T-04044","T-04048","T-04199","T-04225","T-04246","T-04265","T-04286","T-04320","T-04347","T-04455","T-04482","T-04519","T-04549","T-04639","T-04729","T-04758","T-04759","T-04781","T-04855","T-04861","T-04986","T-04994","T-04995","T-05031","T-05110","T-05111","T-05178","T-05262","T-05295","T-05357","T-05414","T-05449","T-05515","T-05725","T-05778","T-05785","T-05798","T-05806","T-05807","T-05832","T-05872","T-05892","T-05914","T-06062","T-06098","T-06174","T-06233","T-06267","T-06271","T-06346","T-06406","T-06427","T-06449","T-06470","T-06533","T-06564","T-06634","T-06666","T-06684","T-06695","T-06712","T-06741","T-06764","T-06768","T-06829","T-06856","T-06923","T-06926","T-06992","T-07098","T-07132","T-07232","T-07252","T-07272","T-07273","T-07280","T-07286","T-07299","T-07324","T-07327","T-07362","T-07380","T-07469","T-07475","T-07484","T-07507","T-07511","T-07561","T-07570","T-07661","T-07662","T-07680","T-07684","T-07688","T-07697","T-07710","T-07729","T-07758","T-07781","T-07791","T-07879","T-07932","T-08013","T-08028","T-08035","T-08087","T-08130","T-08197","T-08215","T-08216","T-08231","T-08289","T-08296","T-08307","T-08346","T-08359","T-08412","T-08421","T-08457","T-08580","T-08643","T-08696","T-08732","T-08775","T-08806","T-08845","T-08846","T-08863","T-08880","T-08890","T-08893","T-08902","T-08958","T-09013","T-09075","T-09104","T-09140","T-09157","T-09204","T-09252","T-09317","T-09325","T-09429","T-09453","T-09466","T-09481","T-09497","T-09504","T-09511","T-09515","T-09554","T-09613","T-09677","T-09725","T-09729","T-09736","T-09761","T-09762","T-09808","T-09896","T-09908","T-09925","T-09986","T-10008","T-10009","T-10040","T-10148","T-10198","T-10307","T-10322","T-10399","T-10598"]
@finland_studynumbers.each do |studynumber|
  Patient.create(studynumber: studynumber, country: 2)
end

@iceland_studynumbers = ["552","786","802","1187","1629","1718","3159","3185","3505","4188"]
@iceland_studynumbers.each do |studynumber|
  Patient.create(studynumber: studynumber, country: 3)
end

@norway_studynumbers = ["445","1293","2016","4322","7745","7772","8585","8957","9032","9617","9934","11358","12780","14188","14757","15480","17132","17485","17661","19054","21724","21999","23061","27442","27816","28230","30537","32283","35514","35983","36916","38814","40161","40235","41425","41905","42535","43919","45589","47346","50079","52510","55660","56474","57156","58190","58580","63558","63718","63859","65320","66812","66932","67351","68315","70930","71486","71547","71895","74474","74899","76328","76729","77669","77817","78604","79189","80010","81382","81383","82406","84479","85498","85743","86990","88871","92060","96096","99493","103080","103193"]
@norway_studynumbers.each do |studynumber|
  Patient.create(studynumber: studynumber, country: 4)
end

@sweden_studynumbers = ["2160","2174","2448","3081","3231","3470","3645","3669","3703","3809","3843","4332","4367","4717","5371","5777","6213","6439","6751","7700","8404","10621","10827","11186","11203","13288","13348","13623","14052","14054","14810","14897","14989","15310","15658","15675","16553","16563","16636","18336","18775","19864","19994","20499","20653","21447","21596","22055","23558","23662","24351","24472","24558","24993","25301","25978","26119","26124","27269","28349","28393","28906","29578","29636","30452","30753","31184","31978","33451","33751","33861","34494","34636","34798","35178","35352","35389","36111","36383","36396","36440","36545","36926","37074","37298","37628","38255","38356","38746","39196","39216","39883","40158","40210","40325","40841","41332","41573","41613","41665","42549","42776","43139","43891","44054","45342","45554","45729","45957","46408","46480","46656","47097","47106","47287","47457","47953","48215","48663","49446","50681","50833","51277","52244","52330","52445","52535","52803","54172","54307","54495","54755","54816","54857","55225","55314","55369","55471","55530","55739","56266","56723","56734","56777","57641","57793","57847","57874","58413","58549","58816","58867","59927","60262","60603","62390","62588","62681","62773","63048","63127","63564","64525","65391","66058","66400","67334","67971","68866","68949","69553","69863","69985","70024","70501","70662","71741","71978","71998","72275","72787","73150","73311","73876","73962","74807","75263","75854","76343","76426","77630","77976","78384","78955","78977","80186","80240","80269","80549","80927","82126","82714","82898","83046","83166","83734","84754","84933","85285","86288","86717","87843","88395","88453","88470","88909","89131","89258","89485","89996","90007","90424","90592","90608","90651","90920","91028","91458","91909","91986","92826","93061","93415","93620","93838","94198","94267","94345","94963","94966","95799","96446","96925","97144","97165","97439","97888","97928","98088","99027","99154","99792","99866","99984","100334","101288","102684","103073","103186","104831","105151","106264","106303","106437","106657","108011","108692","109008","109472","109596","109696","109721","110024","110471","110564","110800","110821","111210","111411","111831","112058","112118","112373","112396","112577","112893","113188","113277","113341","114481","115428","115700","116407","116624","116791","118134","118186","118355","118393","118644","118870","118978","119008","119057","119330","119551","120051","120646","121142","121240","121623","121759","121939","122046","122049","122283","122612","122822","123328","123699","124047","125797","125864","126145","126881","129005","129118","129277","129558","129577","129635","129945","131984","131997","132240","132694","132716","132733","133374","133732","133937","134904","136113","136725","137352","138467","139776","140869","140974","141153","141503","141724","141880","142942","143844","143871","144219","144451","146269","146966","147638","147758","148254","148944","149080","149479","149677","149756","150127","151295","151703","151713","151930","152846","153335","154432","154537","154622","155547","155643","155710","156045","156348","156407","156746","156875","158392","158399","158901","158984","159158","159492","159702","160018","160533","160697","161872","162205","162540","163087","163649","164049","164346","165111","165260","165849","165889","166217","166604","166853","166894","166938","166988","167004","167581","168002","168177","168532","169738","170196","171444","171641","172034","172052","172522","172702","172725","175118","175239","175544","176372","177061","178455","179318","179321","180042","180416","180538","181232","181638","181754","182311","183427","183550","184511","184769","185198","186705","186881","187549","187581","187938","188732","188790","188877","189128","189587","189883","189968","190019","190463","191537","191566","191768","192260","192341","193025","193527","193778","194106","194476","194914","195169","195533","195548","195572","195966","196433","198040","199447","200244","200581","200885","201687","201901","202151","202416","202568","202814","203082","204239","204668","204671","205075","205300","205353","205843","206553","207269","207338","207345","207456","207548","207950","208905","210676","210790","210845","210918","211485","214820","215044","215098","215527","216348","216876","217573","217946","218045","218053","218304","218784","218836","220358","220917","221467","221784","222156","222531","222780","222821","223301","223522","223923","224408","224839","225410","226332","226886","227375","228672","229450","229919","230414","231513","231654","232621","232946","234289","234662","236701","237182","238220","238380","239152","239834","239894","240187","240404","240537","240911","241381","242296","243617","243809","244141","244348","245124","245257","245574","246983","247271","248090","248952","248980","249561","250034","250336","250560","251079","251098","253227","253320","254147","254334","254764","255677","256405","257739","259460","260016","260033","260458","260902","261388","262254","263701","263794","264235","264979","265115"]
@sweden_studynumbers.each do |studynumber|
  Patient.create(studynumber: studynumber, country: 5)
end

@patients = Patient.all
@patients.each do |p|
  p.is_done = false
  p.save
end