.class public Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "SubStatusBarWindowView.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "SubStatusBarWindowView"


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mFixBtn:Landroid/widget/TextView;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mReminderBtn:Landroid/widget/TextView;

.field private mScreenOffBtn:Landroid/widget/TextView;

.field mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field public mSubPanelExpanded:Landroid/view/View;

.field private mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->onBackPressed()Z

    goto :goto_1

    :sswitch_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->onMenuPressed()Z

    move-result v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const v5, 0x7f0e040c

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mSubPanelExpanded:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020cb5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0e0415

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0e0413

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mReminderBtn:Landroid/widget/TextView;

    const v0, 0x7f0e040e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0412

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mScreenOffBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0410

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    const-string v1, "UNFIX"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;

    const-string v1, "FIX"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mSubPanelExpanded:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedVisible(Z)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mSubPanelExpanded:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    goto :goto_0
.end method

.method public setSubStatusBarWindowManager(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    return-void
.end method
