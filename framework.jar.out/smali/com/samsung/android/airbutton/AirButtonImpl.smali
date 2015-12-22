.class public final Lcom/samsung/android/airbutton/AirButtonImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GLOBAL_APP_EASY_CLIP:I = 0x5

.field public static final GLOBAL_APP_FLASH_ANNO:I = 0x2

.field public static final GLOBAL_APP_PEN_WINDOW:I = 0x4

.field public static final GLOBAL_APP_QUICK_MEMO:I = 0x0

.field public static final GLOBAL_APP_RAKEINSELECT:I = 0x7

.field public static final GLOBAL_APP_SCRAPBOOKER:I = 0x1

.field public static final GLOBAL_APP_S_FINDER:I = 0x3

.field public static final GLOBAL_APP_S_NOTE:I = 0x6

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field public static final UI_TYPE_GLOBAL:I = 0x3

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public getAdapter()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getGravity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public hideHoverPointer()V
    .locals 0

    return-void
.end method

.method public initSideButtonState()V
    .locals 0

    return-void
.end method

.method public isAirButtonSettingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBounceEffectEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCoverViewOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHoverPointerEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHoverPointerShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPenWindowMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpenDetachSettingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public linkWithParentView()V
    .locals 0

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHoverButtonSecondary(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onHoverEnter(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onHoverExit(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onHoverMove(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onTouchDownForGA(I)V
    .locals 0

    return-void
.end method

.method public onTouchUpForGA(I)V
    .locals 0

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .locals 0

    return-void
.end method

.method public setBounceEffectEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    return-void
.end method

.method public setHoverPointerEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMultiSelectionEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V
    .locals 0

    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V
    .locals 0

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setPosition(II)V
    .locals 0

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public show(FF)V
    .locals 0

    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public showHoverPointer()V
    .locals 0

    return-void
.end method

.method public unlinkWithParentView()V
    .locals 0

    return-void
.end method
