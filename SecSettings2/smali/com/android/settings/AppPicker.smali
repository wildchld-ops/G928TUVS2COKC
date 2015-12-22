.class public Lcom/android/settings/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppPicker$AppListAdapter;,
        Lcom/android/settings/AppPicker$ViewHolder;,
        Lcom/android/settings/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settings/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/settings/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v4, 0x7f0d0032

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/AppPicker$AppListAdapter;-><init>(Lcom/android/settings/AppPicker;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    iget-object v1, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/AppPicker$AppListAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/AppPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AppPicker$MyApplicationInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/AppPicker;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    return-void
.end method
