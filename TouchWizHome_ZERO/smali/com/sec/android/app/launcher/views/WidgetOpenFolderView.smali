.class public Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;
.super Lcom/sec/android/app/launcher/views/OpenFolderView;
.source "WidgetOpenFolderView.java"


# static fields
.field private static final DIMENSION_NOT_SET:I = -0x1

.field private static mWidgetOpenFolderWidth:I


# instance fields
.field private mAdapterView:Lcom/sec/daliviews/views/AdapterView;

.field private mTitleView:Lcom/sec/daliviews/views/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mWidgetOpenFolderWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/OpenFolderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    return-void
.end method

.method public static getFolderWidth()I
    .locals 2

    sget v0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mWidgetOpenFolderWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0221

    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->readDimension(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mWidgetOpenFolderWidth:I

    :cond_0
    sget v0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mWidgetOpenFolderWidth:I

    return v0
.end method

.method private getTitleView()Lcom/sec/daliviews/views/TextView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00e7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method private static readDimension(I)I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00e8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/AdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    return-object v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-static {v0, p3, p4, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    const v3, 0x10101ad

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setGravity(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v2, 0x7f0a02b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a02b3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v4, v2, v3, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method
