require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFabulas()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFabulas");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Alterar.DataType.Fabulas");
    obj:setTitle("Fabulas (PDF)");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.frmFabulas1_svg = gui.fromHandle(_obj_newObject("form"));
    obj.frmFabulas1_svg:setParent(obj);
    obj.frmFabulas1_svg:setName("frmFabulas1_svg");
    obj.frmFabulas1_svg:setAlign("client");
    obj.frmFabulas1_svg:setTheme("light");
    obj.frmFabulas1_svg:setMargins({top=1});

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmFabulas1_svg);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(918);
    obj.rectangle1:setHeight(1188);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(918);
    obj.image1:setHeight(1188);
    obj.image1:setSRC("/Fabulas/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(46);
    obj.layout1:setTop(1145);
    obj.layout1:setWidth(257);
    obj.layout1:setHeight(5);
    obj.layout1:setName("layout1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(1.5);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(257);
    obj.edit1:setHeight(6);
    obj.edit1:setField("perícias_e_especializacoesRow1__0");
    obj.edit1:setName("edit1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(407);
    obj.layout2:setTop(67);
    obj.layout2:setWidth(167);
    obj.layout2:setHeight(28);
    obj.layout2:setName("layout2");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(14.2);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setHorzTextAlign("leading");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(167);
    obj.edit2:setHeight(29);
    obj.edit2:setField("Classe");
    obj.edit2:setName("edit2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(578);
    obj.layout3:setTop(67);
    obj.layout3:setWidth(167);
    obj.layout3:setHeight(28);
    obj.layout3:setName("layout3");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(14.2);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setHorzTextAlign("leading");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(167);
    obj.edit3:setHeight(29);
    obj.edit3:setField("Kit");
    obj.edit3:setName("edit3");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(748);
    obj.layout4:setTop(67);
    obj.layout4:setWidth(105);
    obj.layout4:setHeight(28);
    obj.layout4:setName("layout4");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(14.2);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(105);
    obj.edit4:setHeight(29);
    obj.edit4:setField("Nomejogador");
    obj.edit4:setName("edit4");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(407);
    obj.layout5:setTop(106);
    obj.layout5:setWidth(167);
    obj.layout5:setHeight(28);
    obj.layout5:setName("layout5");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(14.2);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(167);
    obj.edit5:setHeight(29);
    obj.edit5:setField("Raca");
    obj.edit5:setName("edit5");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(578);
    obj.layout6:setTop(106);
    obj.layout6:setWidth(167);
    obj.layout6:setHeight(28);
    obj.layout6:setName("layout6");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(14.2);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(167);
    obj.edit6:setHeight(29);
    obj.edit6:setField("Alinhamento");
    obj.edit6:setName("edit6");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(748);
    obj.layout7:setTop(106);
    obj.layout7:setWidth(105);
    obj.layout7:setHeight(28);
    obj.layout7:setName("layout7");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(14.2);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(105);
    obj.edit7:setHeight(29);
    obj.edit7:setField("Pontodexp");
    obj.edit7:setName("edit7");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(88);
    obj.layout8:setTop(884);
    obj.layout8:setWidth(215);
    obj.layout8:setHeight(30);
    obj.layout8:setName("layout8");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(14.2);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setHorzTextAlign("leading");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(215);
    obj.edit8:setHeight(31);
    obj.edit8:setField("campovazio4");
    obj.edit8:setName("edit8");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(56);
    obj.layout9:setTop(1212);
    obj.layout9:setWidth(257);
    obj.layout9:setHeight(5);
    obj.layout9:setName("layout9");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(1.5);
    obj.edit9:setFontColor("#000000");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(257);
    obj.edit9:setHeight(6);
    obj.edit9:setField("perícias_e_especializacoesRow1__1");
    obj.edit9:setName("edit9");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(425);
    obj.layout10:setTop(219);
    obj.layout10:setWidth(65);
    obj.layout10:setHeight(58);
    obj.layout10:setName("layout10");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(14.2);
    obj.edit10:setFontColor("#000000");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(65);
    obj.edit10:setHeight(59);
    obj.edit10:setField("INICIATIVA");
    obj.edit10:setName("edit10");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(509);
    obj.layout11:setTop(219);
    obj.layout11:setWidth(65);
    obj.layout11:setHeight(58);
    obj.layout11:setName("layout11");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(14.2);
    obj.edit11:setFontColor("#000000");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(65);
    obj.edit11:setHeight(59);
    obj.edit11:setField("DESLOCAMENTO");
    obj.edit11:setName("edit11");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(399);
    obj.layout12:setTop(412);
    obj.layout12:setWidth(49);
    obj.layout12:setHeight(24);
    obj.layout12:setName("layout12");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(14.2);
    obj.edit12:setFontColor("#6AD928");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(49);
    obj.edit12:setHeight(25);
    obj.edit12:setField("Pontos_de_Fadiga_Atuais");
    obj.edit12:setName("edit12");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(640);
    obj.layout13:setTop(413);
    obj.layout13:setWidth(207);
    obj.layout13:setHeight(45);
    obj.layout13:setName("layout13");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout13);
    obj.textEditor1:setLeft(0);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(207);
    obj.textEditor1:setHeight(45);
    obj.textEditor1:setFontSize(12);
    obj.textEditor1:setFontColor("#000000");
    obj.textEditor1:setField("Desvantagens");
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setName("textEditor1");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(641);
    obj.layout14:setTop(223);
    obj.layout14:setWidth(205);
    obj.layout14:setHeight(65);
    obj.layout14:setName("layout14");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout14);
    obj.textEditor2:setLeft(0);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(205);
    obj.textEditor2:setHeight(65);
    obj.textEditor2:setFontSize(12);
    obj.textEditor2:setFontColor("#000000");
    obj.textEditor2:setField("Vantagens");
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setName("textEditor2");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(640);
    obj.layout15:setTop(493);
    obj.layout15:setWidth(207);
    obj.layout15:setHeight(44);
    obj.layout15:setName("layout15");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout15);
    obj.textEditor3:setLeft(0);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(207);
    obj.textEditor3:setHeight(44);
    obj.textEditor3:setFontSize(12);
    obj.textEditor3:setFontColor("#000000");
    obj.textEditor3:setField("Desvantagens2");
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setName("textEditor3");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(470);
    obj.layout16:setTop(412);
    obj.layout16:setWidth(49);
    obj.layout16:setHeight(24);
    obj.layout16:setName("layout16");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout16);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(14.2);
    obj.edit13:setFontColor("#6AD928");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(49);
    obj.edit13:setHeight(25);
    obj.edit13:setField("Pontos_de_Fadiga_Totais");
    obj.edit13:setName("edit13");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(401);
    obj.layout17:setTop(330);
    obj.layout17:setWidth(49);
    obj.layout17:setHeight(24);
    obj.layout17:setName("layout17");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout17);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(14.2);
    obj.edit14:setFontColor("#E52237");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(49);
    obj.edit14:setHeight(25);
    obj.edit14:setField("Pontos_de_Vida_Atuais");
    obj.edit14:setName("edit14");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(468);
    obj.layout18:setTop(330);
    obj.layout18:setWidth(49);
    obj.layout18:setHeight(24);
    obj.layout18:setName("layout18");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout18);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(14.2);
    obj.edit15:setFontColor("#E52237");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(49);
    obj.edit15:setHeight(25);
    obj.edit15:setField("Pontos_de_Vida_Totais");
    obj.edit15:setName("edit15");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(164);
    obj.layout19:setTop(334);
    obj.layout19:setWidth(126);
    obj.layout19:setHeight(110);
    obj.layout19:setName("layout19");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout19);
    obj.textEditor4:setLeft(0);
    obj.textEditor4:setTop(0);
    obj.textEditor4:setWidth(126);
    obj.textEditor4:setHeight(110);
    obj.textEditor4:setFontSize(9);
    obj.textEditor4:setFontColor("#000000");
    obj.textEditor4:setField("Dominioearte");
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setName("textEditor4");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(163);
    obj.layout20:setTop(492);
    obj.layout20:setWidth(126);
    obj.layout20:setHeight(355);
    obj.layout20:setName("layout20");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout20);
    obj.textEditor5:setLeft(0);
    obj.textEditor5:setTop(0);
    obj.textEditor5:setWidth(126);
    obj.textEditor5:setHeight(355);
    obj.textEditor5:setFontSize(14.2);
    obj.textEditor5:setFontColor("#000000");
    obj.textEditor5:setField("campovazio");
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setName("textEditor5");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(70);
    obj.layout21:setTop(808);
    obj.layout21:setWidth(32);
    obj.layout21:setHeight(28);
    obj.layout21:setName("layout21");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout21);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(14.2);
    obj.edit16:setFontColor("#000000");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(32);
    obj.edit16:setHeight(29);
    obj.edit16:setField("Vontade");
    obj.edit16:setName("edit16");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(70);
    obj.layout22:setTop(703);
    obj.layout22:setWidth(32);
    obj.layout22:setHeight(28);
    obj.layout22:setName("layout22");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout22);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(14.2);
    obj.edit17:setFontColor("#000000");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(32);
    obj.edit17:setHeight(29);
    obj.edit17:setField("Conjuracao");
    obj.edit17:setName("edit17");

    obj.layout23 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(70);
    obj.layout23:setTop(598);
    obj.layout23:setWidth(32);
    obj.layout23:setHeight(28);
    obj.layout23:setName("layout23");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout23);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(14.2);
    obj.edit18:setFontColor("#000000");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(32);
    obj.edit18:setHeight(29);
    obj.edit18:setField("Precisao");
    obj.edit18:setName("edit18");

    obj.layout24 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(69);
    obj.layout24:setTop(493);
    obj.layout24:setWidth(32);
    obj.layout24:setHeight(28);
    obj.layout24:setName("layout24");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout24);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(14.2);
    obj.edit19:setFontColor("#000000");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(32);
    obj.edit19:setHeight(29);
    obj.edit19:setField("Resistencia");
    obj.edit19:setName("edit19");

    obj.layout25 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(70);
    obj.layout25:setTop(388);
    obj.layout25:setWidth(32);
    obj.layout25:setHeight(28);
    obj.layout25:setName("layout25");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout25);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(14.2);
    obj.edit20:setFontColor("#000000");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(32);
    obj.edit20:setHeight(29);
    obj.edit20:setField("Habilidade");
    obj.edit20:setName("edit20");

    obj.layout26 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(70);
    obj.layout26:setTop(283);
    obj.layout26:setWidth(32);
    obj.layout26:setHeight(28);
    obj.layout26:setName("layout26");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout26);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(14.2);
    obj.edit21:setFontColor("#000000");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(32);
    obj.edit21:setHeight(29);
    obj.edit21:setField("Forca");
    obj.edit21:setName("edit21");

    obj.layout27 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(641);
    obj.layout27:setTop(323);
    obj.layout27:setWidth(205);
    obj.layout27:setHeight(45);
    obj.layout27:setName("layout27");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout27);
    obj.textEditor6:setLeft(0);
    obj.textEditor6:setTop(0);
    obj.textEditor6:setWidth(205);
    obj.textEditor6:setHeight(45);
    obj.textEditor6:setFontSize(12);
    obj.textEditor6:setFontColor("#000000");
    obj.textEditor6:setField("Vantagens2");
    obj.textEditor6:setTransparent(true);
    obj.textEditor6:setName("textEditor6");

    obj.layout28 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(348);
    obj.layout28:setTop(899);
    obj.layout28:setWidth(36);
    obj.layout28:setHeight(24);
    obj.layout28:setName("layout28");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout28);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(15.8);
    obj.edit22:setFontColor("#38E5FF");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(36);
    obj.edit22:setHeight(25);
    obj.edit22:setField("Pl");
    obj.edit22:setName("edit22");

    obj.layout29 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(347);
    obj.layout29:setTop(937);
    obj.layout29:setWidth(36);
    obj.layout29:setHeight(24);
    obj.layout29:setName("layout29");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout29);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(15.8);
    obj.edit23:setFontColor("#FCF485");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(36);
    obj.edit23:setHeight(25);
    obj.edit23:setField("Po");
    obj.edit23:setName("edit23");

    obj.layout30 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(348);
    obj.layout30:setTop(979);
    obj.layout30:setWidth(36);
    obj.layout30:setHeight(24);
    obj.layout30:setName("layout30");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout30);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(15.8);
    obj.edit24:setFontColor("#CCCCCC");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(36);
    obj.edit24:setHeight(25);
    obj.edit24:setField("Pp");
    obj.edit24:setName("edit24");

    obj.layout31 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(348);
    obj.layout31:setTop(1017);
    obj.layout31:setWidth(36);
    obj.layout31:setHeight(24);
    obj.layout31:setName("layout31");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout31);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(15.8);
    obj.edit25:setFontColor("#B7B700");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(36);
    obj.edit25:setHeight(25);
    obj.edit25:setField("Pc");
    obj.edit25:setName("edit25");

    obj.layout32 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(349);
    obj.layout32:setTop(1054);
    obj.layout32:setWidth(36);
    obj.layout32:setHeight(24);
    obj.layout32:setName("layout32");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout32);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(15.8);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(36);
    obj.edit26:setHeight(25);
    obj.edit26:setField("Mp");
    obj.edit26:setName("edit26");

    obj.layout33 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(82);
    obj.layout33:setTop(92);
    obj.layout33:setWidth(289);
    obj.layout33:setHeight(28);
    obj.layout33:setName("layout33");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout33);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(14.2);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setHorzTextAlign("leading");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(289);
    obj.edit27:setHeight(29);
    obj.edit27:setField("Nomeperseonagem");
    obj.edit27:setName("edit27");

    obj.layout34 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(405);
    obj.layout34:setTop(908);
    obj.layout34:setWidth(162);
    obj.layout34:setHeight(217);
    obj.layout34:setName("layout34");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout34);
    obj.textEditor7:setLeft(0);
    obj.textEditor7:setTop(0);
    obj.textEditor7:setWidth(162);
    obj.textEditor7:setHeight(217);
    obj.textEditor7:setFontSize(12);
    obj.textEditor7:setFontColor("#000000");
    obj.textEditor7:setField("Inventario");
    obj.textEditor7:setTransparent(true);
    obj.textEditor7:setName("textEditor7");

    obj.layout35 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(345);
    obj.layout35:setTop(1089);
    obj.layout35:setWidth(42);
    obj.layout35:setHeight(36);
    obj.layout35:setName("layout35");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout35);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(14.2);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setHorzTextAlign("leading");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(42);
    obj.edit28:setHeight(37);
    obj.edit28:setField("campovazio2");
    obj.edit28:setName("edit28");

    obj.layout36 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(635);
    obj.layout36:setTop(597);
    obj.layout36:setWidth(214);
    obj.layout36:setHeight(527);
    obj.layout36:setName("layout36");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout36);
    obj.textEditor8:setLeft(0);
    obj.textEditor8:setTop(0);
    obj.textEditor8:setWidth(214);
    obj.textEditor8:setHeight(527);
    obj.textEditor8:setFontSize(12);
    obj.textEditor8:setFontColor("#000000");
    obj.textEditor8:setField("Talentos");
    obj.textEditor8:setTransparent(true);
    obj.textEditor8:setName("textEditor8");

    obj.layout37 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(358);
    obj.layout37:setTop(599);
    obj.layout37:setWidth(205);
    obj.layout37:setHeight(257);
    obj.layout37:setName("layout37");

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout37);
    obj.textEditor9:setLeft(0);
    obj.textEditor9:setTop(0);
    obj.textEditor9:setWidth(205);
    obj.textEditor9:setHeight(257);
    obj.textEditor9:setFontSize(12);
    obj.textEditor9:setFontColor("#000000");
    obj.textEditor9:setField("campovazio3");
    obj.textEditor9:setTransparent(true);
    obj.textEditor9:setName("textEditor9");

    obj.layout38 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(59);
    obj.layout38:setTop(959);
    obj.layout38:setWidth(233);
    obj.layout38:setHeight(174);
    obj.layout38:setName("layout38");

    obj.textEditor10 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout38);
    obj.textEditor10:setLeft(0);
    obj.textEditor10:setTop(0);
    obj.textEditor10:setWidth(233);
    obj.textEditor10:setHeight(174);
    obj.textEditor10:setFontSize(12);
    obj.textEditor10:setFontColor("#000000");
    obj.textEditor10:setField("Pericias");
    obj.textEditor10:setTransparent(true);
    obj.textEditor10:setName("textEditor10");

    obj.layout39 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(155);
    obj.layout39:setTop(217);
    obj.layout39:setWidth(44);
    obj.layout39:setHeight(45);
    obj.layout39:setName("layout39");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout39);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(14.2);
    obj.edit29:setFontColor("#A33086");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(44);
    obj.edit29:setHeight(46);
    obj.edit29:setField("Pstotais");
    obj.edit29:setName("edit29");

    obj.layout40 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(245);
    obj.layout40:setTop(216);
    obj.layout40:setWidth(44);
    obj.layout40:setHeight(43);
    obj.layout40:setName("layout40");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout40);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(14.2);
    obj.edit30:setFontColor("#A33086");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(44);
    obj.edit30:setHeight(44);
    obj.edit30:setField("Psatuais");
    obj.edit30:setName("edit30");

    obj.layout41 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(398);
    obj.layout41:setTop(496);
    obj.layout41:setWidth(49);
    obj.layout41:setHeight(24);
    obj.layout41:setName("layout41");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout41);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(14.2);
    obj.edit31:setFontColor("#0000FF");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(49);
    obj.edit31:setHeight(25);
    obj.edit31:setField("Pontos_de_Mana_Atuais");
    obj.edit31:setName("edit31");

    obj.layout42 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(468);
    obj.layout42:setTop(496);
    obj.layout42:setWidth(49);
    obj.layout42:setHeight(24);
    obj.layout42:setName("layout42");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout42);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(14.2);
    obj.edit32:setFontColor("#0000FF");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(49);
    obj.edit32:setHeight(25);
    obj.edit32:setField("Pontos_de_Mana_Totais");
    obj.edit32:setName("edit32");

    obj.layout43 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(61);
    obj.layout43:setTop(245);
    obj.layout43:setWidth(52);
    obj.layout43:setHeight(28);
    obj.layout43:setName("layout43");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout43);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(14.2);
    obj.edit33:setFontColor("#000000");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(52);
    obj.edit33:setHeight(29);
    obj.edit33:setField("RForca");
    obj.edit33:setName("edit33");

    obj.layout44 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(60);
    obj.layout44:setTop(348);
    obj.layout44:setWidth(52);
    obj.layout44:setHeight(28);
    obj.layout44:setName("layout44");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout44);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(14.2);
    obj.edit34:setFontColor("#000000");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(52);
    obj.edit34:setHeight(29);
    obj.edit34:setField("RHabilidade");
    obj.edit34:setName("edit34");

    obj.layout45 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(59);
    obj.layout45:setTop(457);
    obj.layout45:setWidth(52);
    obj.layout45:setHeight(28);
    obj.layout45:setName("layout45");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout45);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(14.2);
    obj.edit35:setFontColor("#000000");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(52);
    obj.edit35:setHeight(29);
    obj.edit35:setField("RResistencia");
    obj.edit35:setName("edit35");

    obj.layout46 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(60);
    obj.layout46:setTop(562);
    obj.layout46:setWidth(52);
    obj.layout46:setHeight(26);
    obj.layout46:setName("layout46");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout46);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(14.2);
    obj.edit36:setFontColor("#000000");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(52);
    obj.edit36:setHeight(27);
    obj.edit36:setField("RPrecisao");
    obj.edit36:setName("edit36");

    obj.layout47 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(60);
    obj.layout47:setTop(666);
    obj.layout47:setWidth(52);
    obj.layout47:setHeight(28);
    obj.layout47:setName("layout47");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout47);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(14.2);
    obj.edit37:setFontColor("#000000");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(52);
    obj.edit37:setHeight(29);
    obj.edit37:setField("RConjuracao");
    obj.edit37:setName("edit37");

    obj.layout48 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(60);
    obj.layout48:setTop(773);
    obj.layout48:setWidth(52);
    obj.layout48:setHeight(28);
    obj.layout48:setName("layout48");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout48);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(14.2);
    obj.edit38:setFontColor("#000000");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(52);
    obj.edit38:setHeight(29);
    obj.edit38:setField("RVontade");
    obj.edit38:setName("edit38");

    obj.layout49 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(342);
    obj.layout49:setTop(221);
    obj.layout49:setWidth(57);
    obj.layout49:setHeight(54);
    obj.layout49:setName("layout49");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout49);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(14.2);
    obj.edit39:setFontColor("#000000");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(57);
    obj.edit39:setHeight(55);
    obj.edit39:setField("CA");
    obj.edit39:setName("edit39");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmFabulas1_svg);
    obj.dataLink1:setFields({'Conjuracao', 'Forca', 'Habilidade', 'Pontos_de_Fadiga_Atuais', 'Pontos_de_Fadiga_Totais', 'Pontos_de_Mana_Atuais', 'Pontos_de_Mana_Totais', 'Pontos_de_Vida_Atuais', 'Pontos_de_Vida_Totais', 'Psatuais', 'Pstotais', 'RConjuracao', 'Resistencia', 'RForca', 'RHabilidade', 'RPrecisao', 'RResistencia', 'RVontade', 'Vontade'});
    obj.dataLink1:setDefaultValues({'C', 'F', 'H', 'Hx5', 'Hx5', 'Cx5', 'Cx5', 'Rx5+5', 'Rx5+5', '5+V', '5+V', 'Rolagem de C', 'R', 'Rolagem de F', 'Rolagem de H', 'Rolagem de P', 'Rolagem de R', 'Teste de Vontade', 'V'});
    obj.dataLink1:setName("dataLink1");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.frmFabulas1_svg ~= nil then self.frmFabulas1_svg:destroy(); self.frmFabulas1_svg = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFabulas = {
    newEditor = newfrmFabulas, 
    new = newfrmFabulas, 
    name = "frmFabulas", 
    dataType = "Alterar.DataType.Fabulas", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Fabulas (PDF)", 
    description=""};

frmFabulas = _frmFabulas;
rrpg.registrarForm(_frmFabulas);
rrpg.registrarDataType(_frmFabulas);

return _frmFabulas;
