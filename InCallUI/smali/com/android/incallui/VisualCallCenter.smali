.class public Lcom/android/incallui/VisualCallCenter;
.super Ljava/lang/Object;
.source "VisualCallCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VisualCallCenter$IvrTask;,
        Lcom/android/incallui/VisualCallCenter$OnIVRScreenRemovedListener;
    }
.end annotation


# direct methods
.method public static VCC_checkUpdate()V
    .locals 0

    return-void
.end method

.method public static VCC_createYuloreIVRApi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static VCC_getAdapter(Landroid/content/Context;)Lcom/android/incallui/LowerMenuAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static VCC_getCallPath(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static VCC_getUpdateIVRLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static VCC_init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static VCC_menu_getAction(Landroid/widget/AdapterView;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static VCC_obtainIVRHierarchy(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static VCC_registerNetworkReceiver(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static VCC_setUpdateIVRLimit(I)V
    .locals 0

    return-void
.end method

.method public static VCC_unregisterNetworkReceiver(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/VisualCallCenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMenuPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplayIVRPager()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static releaseDisplayIVRPager()V
    .locals 0

    return-void
.end method

.method public static setDisplayIVRPager(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public setOnIVRScreenRemovedListener(Lcom/android/incallui/VisualCallCenter$OnIVRScreenRemovedListener;)V
    .locals 0

    return-void
.end method
