.class public Lcom/ime/implement/setting/KeyboardHeightSettings;
.super Landroid/app/Activity;
.source "KeyboardHeightSettings.java"


# instance fields
.field LevelDP:[I

.field StatusBarHeight:I

.field et:Landroid/content/SharedPreferences$Editor;

.field private heightLevels:[I

.field isDown:Z

.field ll:Landroid/widget/LinearLayout;

.field mAdjustValue:I

.field mBaseHandler:Landroid/widget/PopupWindow;

.field mDeviceHeight:I

.field mEdit:Landroid/widget/EditText;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mHandlerHeight:I

.field mHandlerWidth:I

.field mHandlerX:I

.field mHandlerY:I

.field mHasFocus:Z

.field mInputManager:Lcom/ime/framework/common/InputManager;

.field mMoveHandler:Landroid/widget/PopupWindow;

.field pf:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->LevelDP:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHasFocus:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x1a
        -0xd
        0x0
        0xd
        0x1a
    .end array-data
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/KeyboardHeightSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->updateHandler()V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/KeyboardHeightSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->heightLevels:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/KeyboardHeightSettings;I[I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/KeyboardHeightSettings;->nearestLevel(I[I)I

    move-result v0

    return v0
.end method

.method private nearestLevel(I[I)I
    .locals 9

    const v6, 0x7fffffff

    move v7, p1

    move-object v0, p2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    sub-int v8, v5, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v6, :cond_0

    move v6, v1

    move v7, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v8, p2

    if-ge v2, v8, :cond_3

    aget v8, p2, v2

    if-ne v7, v8, :cond_2

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v2}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightLevel(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v7
.end method

.method private updateHandler()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_input_method"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mDeviceHeight:I

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isShownKeyboardView()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v1

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v4

    iget-object v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v5

    add-int v3, v4, v5

    :cond_2
    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mDeviceHeight:I

    iget v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerY:I

    iget v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerX:I

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerX:I

    iget v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerY:I

    iget v7, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->StatusBarHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    iget v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerHeight:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    :goto_1
    iput v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mAdjustValue:I

    return-void

    :cond_4
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->ll:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerX:I

    iget v7, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerY:I

    iget v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->StatusBarHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_6
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mDeviceHeight:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/KeyboardHeightSettings;->setRequestedOrientation(I)V

    :cond_0
    const v8, 0x7f030036

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/KeyboardHeightSettings;->setContentView(I)V

    new-instance v8, Lcom/ime/implement/setting/KeyboardHeightSettings$1;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/KeyboardHeightSettings$1;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettings;)V

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const v8, 0x7f100069

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/KeyboardHeightSettings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mEdit:Landroid/widget/EditText;

    const v8, 0x7f100067

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/KeyboardHeightSettings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->ll:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mEdit:Landroid/widget/EditText;

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mDeviceHeight:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0204b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0204ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0204b8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030035

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030035

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerHeight:I

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerHeight:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerHeight:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/16 v8, 0x12c

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerY:I

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    const/16 v9, 0x7dc

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    const/16 v9, 0x7dc

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->pf:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->pf:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    new-instance v9, Lcom/ime/implement/setting/KeyboardHeightSettings$2;

    invoke-direct {v9, p0, v6, v4}, Lcom/ime/implement/setting/KeyboardHeightSettings$2;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettings;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const/4 v8, 0x5

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->heightLevels:[I

    const/4 v2, 0x0

    :goto_1
    const/4 v8, 0x5

    if-ge v2, v8, :cond_2

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->heightLevels:[I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->LevelDP:[I

    aget v10, v10, v2

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/ime/framework/util/Utils;->getSystemStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->StatusBarHeight:I

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iget-object v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v8, 0x7f0d02df

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0d02e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/KeyboardHeightSettings$3;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/KeyboardHeightSettings$3;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettings;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v1

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->heightLevels:[I

    invoke-direct {p0, v1, v3}, Lcom/ime/implement/setting/KeyboardHeightSettings;->nearestLevel(I[I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightDelta(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    const-string v3, "keyboard_height_level"

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v0, "HEIGHT_3"

    :goto_1
    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v3, "S011"

    invoke-interface {v2, v3, v0}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    const-string v3, "keyboard_height_level_landscape"

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_0
    const-string v0, "HEIGHT_1"

    goto :goto_1

    :pswitch_1
    const-string v0, "HEIGHT_2"

    goto :goto_1

    :pswitch_2
    const-string v0, "HEIGHT_3"

    goto :goto_1

    :pswitch_3
    const-string v0, "HEIGHT_4"

    goto :goto_1

    :pswitch_4
    const-string v0, "HEIGHT_5"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHasFocus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->updateHandler()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHasFocus:Z

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownKeyboardView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownKeyboardView()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/setting/KeyboardHeightSettings;->updateHandler()V

    goto :goto_0
.end method
