.class public Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;
.super Landroid/app/Fragment;
.source "KeyboardHeightSettingsFragmentTablet.java"


# instance fields
.field LevelDP:[I

.field StatusBarHeight:I

.field et:Landroid/content/SharedPreferences$Editor;

.field private heightLevels:[I

.field isDown:Z

.field layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field listener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field ll:Landroid/widget/LinearLayout;

.field mAdjustValue:I

.field public mBaseHandler:Landroid/widget/PopupWindow;

.field mDeviceHeight:I

.field mEdit:Landroid/widget/EditText;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mHandlerHeight:I

.field mHandlerWidth:I

.field mHandlerX:I

.field mHandlerY:I

.field mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsPause:Z

.field mMoveHandler:Landroid/widget/PopupWindow;

.field private mParent:Landroid/app/Activity;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field pf:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->LevelDP:[I

    new-instance v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$3;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$3;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->listener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    new-instance v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$4;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void

    :array_0
    .array-data 4
        -0x1a
        -0xd
        0x0
        0xd
        0x1a
    .end array-data
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->updateHandler()V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;I[I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->nearestLevel(I[I)I

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

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v2}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightLevel(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v7
.end method

.method private updateHandler()V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-boolean v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mIsPause:Z

    if-eqz v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mDeviceHeight:I

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isShownKeyboardView()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v4

    add-int v2, v3, v4

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mDeviceHeight:I

    iget v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    iget v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    iget v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    iget v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    iget v7, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_1
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    :goto_2
    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->ll:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    iget v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    iget v7, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_5
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->setHasOptionsMenu(Z)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    new-instance v8, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$1;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$1;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v9, 0x7f100069

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mEdit:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v9, 0x7f100067

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->ll:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mEdit:Landroid/widget/EditText;

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mDeviceHeight:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0204b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0204ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0204b8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030035

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030035

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->misTablet:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    iget v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/16 v8, 0x12c

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    const/16 v9, 0x7dc

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    const/16 v9, 0x7dc

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->pf:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->pf:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    new-instance v9, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;

    invoke-direct {v9, p0, v6, v4}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const/4 v8, 0x5

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I

    const/4 v2, 0x0

    :goto_1
    const/4 v8, 0x5

    if-ge v2, v8, :cond_3

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->LevelDP:[I

    aget v10, v10, v2

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    iput v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iget-object v9, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mDeviceHeight:I

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "TABLET_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->misTablet:Z

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0d02e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$5;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$5;-><init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mainView:Landroid/view/View;

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    const-string v4, "keyboard_height_level"

    iget-object v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mIsPause:Z

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v1, "HEIGHT_3"

    :goto_1
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v4, "S011"

    invoke-interface {v3, v4, v1}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->misTablet:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v4, 0x7f100069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    const-string v4, "keyboard_height_level_landscape"

    iget-object v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_0
    const-string v1, "HEIGHT_1"

    goto :goto_1

    :pswitch_1
    const-string v1, "HEIGHT_2"

    goto :goto_1

    :pswitch_2
    const-string v1, "HEIGHT_3"

    goto :goto_1

    :pswitch_3
    const-string v1, "HEIGHT_4"

    goto :goto_1

    :pswitch_4
    const-string v1, "HEIGHT_5"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mIsPause:Z

    invoke-direct {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->updateHandler()V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->misTablet:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->setCurrentMenu(I)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v4, 0x7f100068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d02e1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mainView:Landroid/view/View;

    const v4, 0x7f100069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method
