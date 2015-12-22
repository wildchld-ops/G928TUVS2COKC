.class Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation


# instance fields
.field mCategory:I

.field mContext:Landroid/content/Context;

.field mFilter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;

.field mSearchText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

.field toShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mFilter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mContext:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method private displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v5, p2, v6}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v3, v1

    const/4 v7, 0x0

    invoke-interface {v0, v5, v3, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->getItem(I)Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f030052

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v5, 0x7f0b0123

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0122

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f0b0121

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mMode:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$400(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->FOLDER:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    if-ne v5, v6, :cond_1

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getChecked()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    new-instance v5, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter$1;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getMoreAppsListState()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->setLiveIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;)Z

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method removeData(I)Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-object v0
.end method

.method public runFilter()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mFilter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;->filterWidgets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSupportSearchIndex:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$500(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mIndexView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$600(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getMoreAppsListState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mIndexView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$600(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public unBind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mFilter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->mSearchText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
