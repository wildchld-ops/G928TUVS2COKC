.class public Lcom/android/settings/UnlockEffect;
.super Landroid/app/Activity;
.source "UnlockEffect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UnlockEffect$RadioAdapter;
    }
.end annotation


# static fields
.field static final EffectName:[I

.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

.field backgroundImage:[I

.field dbValues:[Ljava/lang/String;

.field private mDefaultUnlock:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsTablet:Z

.field private mListView:Landroid/widget/ListView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTabletView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/UnlockEffect;->EffectName:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a13ea
        0x7f0a13f3
        0x7f0a102b
        0x7f0a13ef
        0x7f0a13f2
        0x7f0a102b
        0x7f0a102b
        0x7f0a13f1
        0x7f0a13ee
        0x7f0a102b
        0x7f0a13eb
        0x7f0a13ec
        0x7f0a13ed
        0x7f0a13f4
        0x7f0a13f0
        0x7f0a13f5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    iput v0, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UnlockEffect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    return v0
.end method

.method private createDialogforTablet()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401f5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->initViewforTablet()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a102b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a09e8

    new-instance v3, Lcom/android/settings/UnlockEffect$1;

    invoke-direct {v3, p0}, Lcom/android/settings/UnlockEffect$1;-><init>(Lcom/android/settings/UnlockEffect;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/UnlockEffect$2;

    invoke-direct {v3, p0}, Lcom/android/settings/UnlockEffect$2;-><init>(Lcom/android/settings/UnlockEffect;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/android/settings/UnlockEffect$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/UnlockEffect$3;-><init>(Lcom/android/settings/UnlockEffect;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private initViewforTablet()V
    .locals 3

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    const v1, 0x7f100186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->populateUnlockEffectsOptions()V

    new-instance v0, Lcom/android/settings/UnlockEffect$RadioAdapter;

    const v1, 0x7f0400f8

    sget-object v2, Lcom/android/settings/UnlockEffect;->mModeItem:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/UnlockEffect$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->updateImageResource()V

    return-void
.end method

.method private updateImageResource()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f040105

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    const v1, 0x7f100186

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f10025e

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_2

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object v11, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->populateUnlockEffectsOptions()V

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v1, 0x7f0d000c

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0d001c

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0d0012

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v1, Lcom/android/settings/UnlockEffect$RadioAdapter;

    const v3, 0x7f0400f7

    sget-object v5, Lcom/android/settings/UnlockEffect;->mModeItem:[Ljava/lang/String;

    invoke-direct {v1, p0, v3, v5}, Lcom/android/settings/UnlockEffect$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->updateImageResource()V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    :goto_0
    const-string v0, "UnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockscreen_ripple_effect DB Value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    iget-boolean v0, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/UnlockEffect;->setVisible(Z)V

    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->createDialogforTablet()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v2, "selected_idx"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UnlockEffect"

    const-string v3, "ArrayIndexOutOfBoundsException Occured.  set to Popping Colour."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "selected_idx"

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method populateUnlockEffectsOptions()V
    .locals 8

    const v7, 0x7f020255

    const/4 v2, 0x0

    const-string v4, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x10

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "0"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f020257

    aput v6, v5, v2

    const-string v5, "com.sec.android.app.montblanc"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "10"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v2, v3, 0x1

    const v6, 0x7f020256

    aput v6, v5, v3

    :goto_0
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "COLOURDROPLET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "15"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    aput v7, v5, v2

    move v2, v3

    :cond_0
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "WATERDROPLET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "13"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    aput v7, v5, v2

    move v2, v3

    :cond_1
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "SPARKLINGBUBBLES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "14"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f020258

    aput v6, v5, v2

    move v2, v3

    :cond_2
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "ABSTRACTTILES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "11"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f020252

    aput v6, v5, v2

    move v2, v3

    :cond_3
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "GEOMETRICMOSAIC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "12"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f020254

    aput v6, v5, v2

    move v2, v3

    :cond_4
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "BRILLIANTRING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "8"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f020253

    aput v6, v5, v2

    move v2, v3

    :cond_5
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "POPPINGCOLOURS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "3"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f020259

    aput v6, v5, v2

    move v2, v3

    :cond_6
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "WATERCOLOUR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "4"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f02025c

    aput v6, v5, v2

    move v2, v3

    :cond_7
    const-string v5, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v6, "RIPPLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "1"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v6, 0x7f02025a

    aput v6, v5, v2

    move v2, v3

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    sput-object v5, Lcom/android/settings/UnlockEffect;->mModeItem:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    :cond_9
    return-void

    :cond_a
    move v2, v3

    goto/16 :goto_0
.end method
