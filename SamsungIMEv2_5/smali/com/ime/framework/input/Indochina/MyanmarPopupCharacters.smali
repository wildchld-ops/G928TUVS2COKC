.class public Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;
.super Ljava/lang/Object;
.source "MyanmarPopupCharacters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPopupCharactersShifted(II)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7a314d4d

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;->getPopupCharactersShiftedZawgyi(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x6d794d4d

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;->getPopupCharactersShiftedUnicode(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupCharactersShiftedUnicode(I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, ""

    goto :goto_0

    :pswitch_2
    const-string v0, ""

    goto :goto_0

    :pswitch_3
    const-string v0, ""

    goto :goto_0

    :pswitch_4
    const-string v0, ""

    goto :goto_0

    :pswitch_5
    const-string v0, ""

    goto :goto_0

    :pswitch_6
    const-string v0, ""

    goto :goto_0

    :pswitch_7
    const-string v0, ""

    goto :goto_0

    :pswitch_8
    const-string v0, ""

    goto :goto_0

    :pswitch_9
    const-string v0, "\u1026"

    goto :goto_0

    :pswitch_a
    const-string v0, ""

    goto :goto_0

    :pswitch_b
    const-string v0, ""

    goto :goto_0

    :pswitch_c
    const-string v0, ""

    goto :goto_0

    :pswitch_d
    const-string v0, ""

    goto :goto_0

    :pswitch_e
    const-string v0, ""

    goto :goto_0

    :pswitch_f
    const-string v0, ""

    goto :goto_0

    :pswitch_10
    const-string v0, ""

    goto :goto_0

    :pswitch_11
    const-string v0, "\u1023"

    goto :goto_0

    :pswitch_12
    const-string v0, ""

    goto :goto_0

    :pswitch_13
    const-string v0, ""

    goto :goto_0

    :pswitch_14
    const-string v0, ""

    goto :goto_0

    :pswitch_15
    const-string v0, ""

    goto :goto_0

    :pswitch_16
    const-string v0, ""

    goto :goto_0

    :pswitch_17
    const-string v0, ""

    goto :goto_0

    :pswitch_18
    const-string v0, ""

    goto :goto_0

    :pswitch_19
    const-string v0, ""

    goto :goto_0

    :pswitch_1a
    const-string v0, ""

    goto :goto_0

    :pswitch_1b
    const-string v0, ""

    goto :goto_0

    :pswitch_1c
    const-string v0, ""

    goto :goto_0

    :pswitch_1d
    const-string v0, ""

    goto :goto_0

    :pswitch_1e
    const-string v0, ""

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_7
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_17
        :pswitch_0
        :pswitch_1b
        :pswitch_4
        :pswitch_16
        :pswitch_b
        :pswitch_1a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_e
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_15
        :pswitch_1e
        :pswitch_f
        :pswitch_d
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method public getPopupCharactersShiftedZawgyi(I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "\u1068"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u106c\u1097"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u1070\u1091"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u106e"

    goto :goto_0

    :sswitch_4
    const-string v0, ""

    goto :goto_0

    :sswitch_5
    const-string v0, "\u1075"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u1062"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u1023"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u102a"

    goto :goto_0

    :sswitch_9
    const-string v0, "\u1069"

    goto :goto_0

    :sswitch_a
    const-string v0, ""

    goto :goto_0

    :sswitch_b
    const-string v0, ""

    goto :goto_0

    :sswitch_c
    const-string v0, ""

    goto :goto_0

    :sswitch_d
    const-string v0, "\u108c"

    goto :goto_0

    :sswitch_e
    const-string v0, ""

    goto :goto_0

    :sswitch_f
    const-string v0, ""

    goto :goto_0

    :sswitch_10
    const-string v0, "\u108d\u108e"

    goto :goto_0

    :sswitch_11
    const-string v0, ""

    goto :goto_0

    :sswitch_12
    const-string v0, ""

    goto :goto_0

    :sswitch_13
    const-string v0, ""

    goto :goto_0

    :sswitch_14
    const-string v0, "\u106f"

    goto :goto_0

    :sswitch_15
    const-string v0, ""

    goto :goto_0

    :sswitch_16
    const-string v0, ""

    goto :goto_0

    :sswitch_17
    const-string v0, ""

    goto :goto_0

    :sswitch_18
    const-string v0, ""

    goto :goto_0

    :sswitch_19
    const-string v0, ""

    goto :goto_0

    :sswitch_1a
    const-string v0, ""

    goto :goto_0

    :sswitch_1b
    const-string v0, ""

    goto :goto_0

    :sswitch_1c
    const-string v0, ""

    goto :goto_0

    :sswitch_1d
    const-string v0, ""

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3dc -> :sswitch_1d
        0x1000 -> :sswitch_6
        0x1001 -> :sswitch_18
        0x1004 -> :sswitch_7
        0x1005 -> :sswitch_9
        0x1006 -> :sswitch_0
        0x100a -> :sswitch_1b
        0x1010 -> :sswitch_1
        0x1011 -> :sswitch_17
        0x1014 -> :sswitch_2
        0x1015 -> :sswitch_5
        0x1016 -> :sswitch_16
        0x1018 -> :sswitch_1a
        0x1019 -> :sswitch_3
        0x101a -> :sswitch_15
        0x101b -> :sswitch_a
        0x101c -> :sswitch_19
        0x101e -> :sswitch_8
        0x1021 -> :sswitch_4
        0x102c -> :sswitch_1c
        0x102d -> :sswitch_d
        0x102f -> :sswitch_12
        0x1030 -> :sswitch_13
        0x1031 -> :sswitch_b
        0x1037 -> :sswitch_10
        0x1038 -> :sswitch_14
        0x1039 -> :sswitch_e
        0x103a -> :sswitch_c
        0x103b -> :sswitch_11
        0x103c -> :sswitch_f
    .end sparse-switch
.end method

.method public isNeededLongpressPreviewIcon(II)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7a314d4d

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;->getPopupCharactersShiftedZawgyi(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const v1, 0x6d794d4d

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;->getPopupCharactersShiftedUnicode(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
