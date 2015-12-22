.class public Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.super Landroid/app/Fragment;
.source "SettingsMenuEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;,
        Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;,
        Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    }
.end annotation


# static fields
.field public static assistantmenuSettingsPrefs:Ljava/lang/String;

.field public static keyLowerItemTotalCount:Ljava/lang/String;

.field public static keyMenuItemTotalCount:Ljava/lang/String;


# instance fields
.field private GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

.field private GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

.field private StatusBarHeight:I

.field public frag_Act:Landroid/app/Activity;

.field private lin_Layout:Landroid/widget/LinearLayout;

.field private mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

.field private mControlBar:Landroid/widget/ImageView;

.field private final mControlbartouchListener:Landroid/view/View$OnTouchListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

.field private mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

.field private mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

.field private mGridViewItemListLower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewItemListUpper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewLower:Landroid/widget/GridView;

.field private mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

.field private final mGridViewTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mGridViewUpper:Landroid/widget/GridView;

.field private mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

.field private mIconImgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIconStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTranslateAnimationEnd:Z

.field private mIsWidgetVisible:Z

.field private mIsdetectedUpper:Z

.field private mLowerDetectedItemId:I

.field private mNewLowerDetectedItemId:I

.field private mNewUpperDetectedItemId:I

.field private mNotPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreDetectedItemId:I

.field private mPrePositionX:F

.field private mPrePositionY:F

.field private mPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReset:Landroid/view/MenuItem;

.field private mResources:Landroid/content/res/Resources;

.field private mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

.field private mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

.field private final mSettingsMenuEditorHandler:Landroid/os/Handler;

.field private mTotalLowerItemCount:I

.field private mTotalUpperItemCount:I

.field mTouchSyncObj:Ljava/lang/Object;

.field private mTranslateAnimation:Landroid/view/animation/Animation;

.field mTranslateLowerGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

.field mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

.field private mUpperDetectedItemId:I

.field private mWdigetItemBmpX:F

.field private mWdigetItemBmpY:F

.field private mWidgetImageView:Landroid/widget/ImageView;

.field private mWidgetItemBmp:Landroid/graphics/Bitmap;

.field private mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "menuItemTotalCount"

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    const-string v0, "lowerItemTotalCount"

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    const-string v0, "AM_SETTINGS_PREFS"

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->assistantmenuSettingsPrefs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$5;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlbartouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateLowerGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    return-void
.end method

.method private AfterTranslateAnimationEnd()V
    .locals 3

    const-string v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[c] AfterTranslateAnimationEnd()+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private AssignDragItem()V
    .locals 5

    const v4, 0x7f1003f5

    const v3, 0x7f020206

    const/4 v2, -0x1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    return-void
.end method

.method private ChangelayoutByGap(I)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const v8, 0x7f0d0335

    const v7, 0x7f0d0330

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    add-int v3, v4, p1

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLowerHeight(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_c

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->getCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLine(I)I

    move-result v1

    const-string v4, "SettingsMenuEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChangelayoutByGap() line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne v1, v9, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    if-le v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_3
    if-ne v1, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0331

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_4
    if-ne v1, v11, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0332

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v4, 0x4

    if-ne v1, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0333

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v4, 0x5

    if-ne v1, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0334

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_7
    const-string v4, "SettingsMenuEditorFragment"

    const-string v5, "ChangelayoutByGap else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    if-ne v1, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_9
    if-ne v1, v10, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0336

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_a
    if-ne v1, v11, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0337

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_b
    const-string v4, "SettingsMenuEditorFragment"

    const-string v5, "ChangelayoutByLine else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    const-string v4, "SettingsMenuEditorFragment"

    const-string v5, "ChangelayoutByGap else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private ChangelayoutByLine(ZI)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->getCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLine(I)I

    move-result v0

    const-string v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChangelayoutByLine() line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0330

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d032f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_1
    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0332

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0333

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0334

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_5
    const-string v2, "SettingsMenuEditorFragment"

    const-string v3, "ChangelayoutByLine else"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-ne v0, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0335

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_0

    :cond_7
    if-ne v0, v6, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0336

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    if-ne v0, v7, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0337

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-ne p2, v5, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "SettingsMenuEditorFragment"

    const-string v3, "ChangelayoutByLine else"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I
    .locals 23

    const/4 v7, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getWidth()I

    move-result v5

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getWidth()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v18

    add-int v18, v18, v7

    return v18

    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v18, 0x0

    aget v13, v9, v18

    const/16 v18, 0x1

    aget v14, v9, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v13, v14, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v15, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "SettingsMenuEditorFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "FindNearItem()_intersects_ItemIndex: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    sub-int v18, v16, v11

    sub-int v19, v16, v11

    mul-int v18, v18, v19

    sub-int v19, v17, v12

    sub-int v20, v17, v12

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v4, v0

    if-le v5, v4, :cond_2

    move v5, v4

    move v7, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private FindNearItem()V
    .locals 4

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->IsLowerGridViewArea()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    :goto_0
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    :cond_0
    :goto_1
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    if-eq v0, v3, :cond_9

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    :goto_3
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    :cond_7
    :goto_4
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto/16 :goto_4
.end method

.method private GetGridViewLine(I)I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "SettingsMenuEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGridViewLine gridViewItemCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v1

    if-eqz v1, :cond_6

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    if-gt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x4

    if-gt p1, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x5

    if-gt p1, v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-string v1, "SettingsMenuEditorFragment"

    const-string v2, "GetGridViewLine [GetOrientationState is true] else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    if-gt p1, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_8

    const/4 v0, 0x2

    goto :goto_0

    :cond_8
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_9

    const/4 v0, 0x3

    goto :goto_0

    :cond_9
    const-string v1, "SettingsMenuEditorFragment"

    const-string v2, "GetGridViewLine [GetOrientationState is false] else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private GetGridViewLowerHeight(I)I
    .locals 3

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private GetOrientationPortraite()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GetWindowSize()V
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    return-void
.end method

.method private GridViewScroll(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V
    .locals 2

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$SCROLL_MOTION:[I

    invoke-virtual {p1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollByOffset(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollByOffset(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private Init()V
    .locals 10

    const/4 v1, -0x2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->assistantmenuSettingsPrefs:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->AddOptionalMenuIfNeed(Landroid/content/Context;)Z

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    if-ge v7, v0, :cond_4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assistant_menu_icon_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    :goto_1
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-ne v6, v0, :cond_3

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_3
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    if-ge v7, v0, :cond_8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assistant_menu_icon_key00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    :goto_4
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-ne v6, v0, :cond_7

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_7

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitUI()V

    invoke-direct {p0, v4, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const/16 v4, 0x28

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method private InitUI()V
    .locals 4

    const v3, 0x7f0401c0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetWindowSize()V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f1003f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f1003f3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f1003f4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;-><init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;-><init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    new-instance v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$2;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    new-instance v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlbartouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private IsLowerGridViewArea()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v1, v4, [I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int v2, v4, v5

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    if-le v2, v0, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private IsScrollArea()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    aget v5, v0, v10

    aget v6, v0, v11

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    sub-int/2addr v6, v7

    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v0, v11

    iget-object v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsScrollArea"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getHeight()I

    move-result v6

    invoke-virtual {v1, v10, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    const/4 v4, 0x1

    :goto_0
    const-string v5, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsScrollArea:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_DOWN:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "SettingsMenuEditorFragment"

    const-string v6, "IsScrollArea : else"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ItemAnimationRun(Landroid/widget/GridView;II)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const v8, 0x7f0d033b

    const v7, 0x7f0d0338

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p2, v0

    sub-int/2addr p3, v0

    :cond_0
    const/4 v1, 0x0

    if-le p3, p2, :cond_7

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-gt v1, p3, :cond_e

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    if-ne v1, p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-boolean v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0339

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d033a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d033a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    :cond_6
    const-string v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[c] gridview.getChildAt(i) null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v1, p3

    :goto_3
    add-int/lit8 v2, p2, -0x1

    if-gt v1, v2, :cond_e

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_a

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    :goto_4
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_9

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iput-boolean v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0339

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_c

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_c
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_4

    :cond_d
    const-string v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[c] gridview.getChildAt(i) null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    return-void
.end method

.method private MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .locals 5

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-direct {v2, v0, p1, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;-><init>(ILcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;Ljava/lang/String;)V

    return-object v2
.end method

.method private RemoveWidget()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private ResetSettings()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "Restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PowerOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "Restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "PowerOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lez v2, :cond_4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v4, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLowerHeight(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    return-void
.end method

.method private SaveSettings()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistant_menu_icon_key"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistant_menu_icon_key00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private ShowWidget()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    const-string v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowWidget() mWidgetPointLayoutParams.x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWidgetPointLayoutParams.y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private UpdateWidget()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateWidget() mWidgetLayoutParams.x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWidgetLayoutParams.y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GridViewScroll(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AfterTranslateAnimationEnd()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->FindNearItem()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByGap(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    return-void
.end method

.method static synthetic access$316(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    return p1
.end method

.method static synthetic access$516(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->UpdateWidget()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->IsScrollArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public GetIsWidgetVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    return v0
.end method

.method public GetLowerDetectedItemId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    return v0
.end method

.method public GetTranslateAnimationEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    return v0
.end method

.method public GetUpperDetectedItemId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    return v0
.end method

.method public InitResolution()V
    .locals 13

    const/16 v12, 0x400

    const/16 v11, 0x258

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iget v4, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    iget v7, v3, Landroid/util/DisplayMetrics;->ydpi:F

    const-string v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen W x H pixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen X x Y dpi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "density = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  scaledDensity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  densityDpi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v11, :cond_0

    if-eq v2, v12, :cond_1

    :cond_0
    if-ne v5, v12, :cond_2

    if-ne v2, v11, :cond_2

    :cond_1
    const/16 v8, 0xa0

    if-ne v1, v8, :cond_2

    const-string v8, "SettingsMenuEditorFragment"

    const-string v9, "InitResolution changed for sw599-mdpi"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    const/4 v8, 0x5

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    :goto_0
    return-void

    :cond_2
    const-string v8, "SettingsMenuEditorFragment"

    const-string v9, "InitResolution changed for other device"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    const/4 v8, 0x6

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    goto :goto_0
.end method

.method public ItemClick(Landroid/view/View;ILcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

    invoke-virtual {p3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v5

    :goto_1
    return-void

    :pswitch_0
    const-string v4, "SettingsMenuEditorFragment"

    const-string v6, "OnItemClickListener - mGridViewUpper"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    const-string v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mGridViewUpper.getFirstVisiblePosition() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mGridViewUpper.getLastVisiblePosition() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    :goto_2
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    rem-int/2addr v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    if-ge v4, v0, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    :cond_3
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    goto :goto_2

    :pswitch_1
    const-string v4, "SettingsMenuEditorFragment"

    const-string v6, "OnItemClickListener - mGridViewLower"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le p2, v4, :cond_5

    const-string v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] ItemClick: wrong position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    if-eq v4, v6, :cond_6

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ItemLongClick(Landroid/view/View;ILcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)Z
    .locals 9

    const/4 v8, 0x1

    const-string v4, "SettingsMenuEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[c] ItemLongClick()+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const v4, 0x7f1003f5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f020205

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

    invoke-virtual {p3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] mGridViewUpperItemLongClickListener() - home/setting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ShowWidget()V

    monitor-exit v5

    return v8

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iput p2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iput-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Widgety"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setEnabled(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iput p2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iput-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public SetOnTouchActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    return-void
.end method

.method public SetOnTouchActionUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingsMenuEditorFragment"

    const-string v2, "mGridViewUpperTouchListener_ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const v3, 0x7f0d033e

    const v2, 0x7f0d033d

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetWindowSize()V

    invoke-direct {p0, v1, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0a154a

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mReset:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mReset:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->frag_Act:Landroid/app/Activity;

    const v0, 0x7f0401bf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->Init()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ResetSettings()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
