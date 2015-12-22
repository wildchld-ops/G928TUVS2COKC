.class public Lcom/android/incallui/SecDrivelinkUtils;
.super Ljava/lang/Object;
.source "SecDrivelinkUtils.java"


# direct methods
.method public static getLabelIconId(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f020045

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020043

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020046

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020044

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020042

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getMirrorLinkLabelIconId(I)I
    .locals 1

    const v0, 0x7f020144

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020097

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020144

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020145

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isPortrait(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
