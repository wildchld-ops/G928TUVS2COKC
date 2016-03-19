.class public final Lcom/nuance/nmdp/speechkit/du;
.super Lcom/nuance/nmdp/speechkit/dw;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dw;-><init>(S)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/dy;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xe0

    const/16 v2, 0xc1

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dw;-><init>(S)V

    const-string v0, "name"

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dy;->c()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    const-string v0, "type"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dy;->c()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    return-void

    :cond_0
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dy;->c()B

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    const-string v0, "buffer_id"

    check-cast p1, Lcom/nuance/nmdp/speechkit/dp;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dp;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_1
    const-string v0, "text"

    invoke-virtual {p0, v0, v4, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_2
    const-string v0, "data"

    invoke-virtual {p0, v0, v4, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_3
    const-string v0, "dict"

    check-cast p1, Lcom/nuance/nmdp/speechkit/ds;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ds;->a()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_4
    const-string v0, "dict"

    check-cast p1, Lcom/nuance/nmdp/speechkit/ec;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ec;->a()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_5
    const-string v0, "text"

    check-cast p1, Lcom/nuance/nmdp/speechkit/ef;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ef;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_6
    const-string v0, "dict"

    check-cast p1, Lcom/nuance/nmdp/speechkit/ee;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ee;->d()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x7f -> :sswitch_6
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Ljava/lang/String;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 5

    const/16 v1, 0x202

    invoke-direct {p0, v1}, Lcom/nuance/nmdp/speechkit/dw;-><init>(S)V

    const-string v1, "uid"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p1, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "pdx_version"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p2, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "client_version"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p3, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "script_version"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p4, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "language"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p5, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "region"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p6, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "device_codec"

    invoke-virtual {p7}, Lcom/nuance/nmdp/speechkit/cj;->a()S

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;I)V

    const-string v1, "dictation_language"

    const/16 v2, 0xc1

    invoke-virtual {p0, v1, p8, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "lcd_width"

    invoke-virtual {p0, v1, p9}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;I)V

    const-string v1, "lcd_height"

    invoke-virtual {p0, v1, p10}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;I)V

    if-nez p11, :cond_1

    const-string v1, "carrier"

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    :goto_0
    const-string v1, "phone_model"

    const/16 v2, 0xc1

    move-object/from16 v0, p12

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "phone_number"

    const/16 v2, 0xc1

    move-object/from16 v0, p13

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "original_session_id"

    const/16 v2, 0x16

    move-object/from16 v0, p14

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    if-eqz p15, :cond_0

    const-string v1, "new_session_id"

    const/16 v2, 0x16

    move-object/from16 v0, p15

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    :cond_0
    const-string v1, "application"

    const/16 v2, 0x16

    move-object/from16 v0, p16

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "nmaid"

    const/16 v2, 0x16

    move-object/from16 v0, p16

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v1, "command"

    const/16 v2, 0x16

    move-object/from16 v0, p17

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    if-eqz p18, :cond_2

    invoke-interface/range {p18 .. p18}, Lcom/nuance/nmdp/speechkit/ej;->a()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p18

    check-cast v2, Lcom/nuance/nmdp/speechkit/dt;

    invoke-virtual {v2, v1}, Lcom/nuance/nmdp/speechkit/dt;->b(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/dr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/dr;->c()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->e(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :cond_1
    const-string v1, "carrier"

    const/16 v2, 0xc1

    move-object/from16 v0, p11

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x16

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p18

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc1

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_4
    const/4 v2, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x16 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
    .end sparse-switch
.end method

.method public constructor <init>([B)V
    .locals 2

    const/16 v0, 0x402

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dw;-><init>(S)V

    const-string v0, "data"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;[BS)V

    return-void
.end method
