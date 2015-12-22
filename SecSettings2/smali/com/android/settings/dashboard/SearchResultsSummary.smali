.class public Lcom/android/settings/dashboard/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C


# instance fields
.field private keyListnerFolder:Landroid/view/View$OnKeyListener;

.field private mContext:Landroid/content/Context;

.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mLoading:Landroid/view/ViewGroup;

.field private mNoResults:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchToolbar:Landroid/widget/Toolbar;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsHeaderView:Landroid/view/View;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

.field private scrollListner:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings/dashboard/SearchResultsSummary;->ELLIPSIS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->keyListnerFolder:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->startLoading()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->stopLoading()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/dashboard/SearchResultsSummary;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/dashboard/SearchResultsSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setEmptyVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method private cancelLoading()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private clearAllTasks()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveQueryToDatabase(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/search/Index;->addSavedQuery(Ljava/lang/String;)J

    return-void
.end method

.method private setEmptyVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->setQuery(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method private startLoading()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method private updateSearchResults()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x0

    const-string v3, "main_mode"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/search/Index;->setCategories(Ljava/util/List;)V

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->startSearchIndexing(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-eqz p1, :cond_0

    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const v2, 0x7f0401af

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    const v2, 0x7f1003c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    const v2, 0x7f1003c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    const v2, 0x7f1003c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const v2, 0x7f1003bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    const v3, 0x7f120008

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->inflateMenu(I)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, v0}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    const v2, 0x7f10060f

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/android/settings/dashboard/SearchResultsSummary$3;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$3;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v2, 0x7f1003c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->keyListnerFolder:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/dashboard/SearchResultsSummary$4;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$4;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v2, 0x7f1003c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->keyListnerFolder:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/dashboard/SearchResultsSummary$5;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$5;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401b1

    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2
    return-object v1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->registerAssistant()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->cancelLoading()V

    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    :goto_0
    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x102042e

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->unregisterAssistant()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearSuggestions()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearResults()V

    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    return-void
.end method
