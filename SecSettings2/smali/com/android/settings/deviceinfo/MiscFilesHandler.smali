.class public Lcom/android/settings/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNoItemsTextView:Landroid/widget/TextView;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mSubTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNoItemsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->onBackPressed()V

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0029

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v11, v1, v2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    const v1, 0x7f0a0c02

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setTitle(I)V

    const v1, 0x7f0a0c03

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    const v1, 0x7f0a0c04

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0401c2

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x1000000

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f1003fd

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNoItemsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNoItemsTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v1, 0x7f0d000c

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0d001c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0d0011

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v9}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f1003fc

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v1, 0x7f0d0029

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0d0035

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0d0029

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v5, 0x7f0d0036

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v8, v1, v2, v3, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNoItemsTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v9}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
