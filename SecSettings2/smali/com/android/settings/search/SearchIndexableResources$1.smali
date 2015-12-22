.class final Lcom/android/settings/search/SearchIndexableResources$1;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchIndexableResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/provider/SearchIndexableResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/provider/SearchIndexableResource;Landroid/provider/SearchIndexableResource;)I
    .locals 4

    iget-object v3, p1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p2, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/provider/SearchIndexableResource;

    check-cast p2, Landroid/provider/SearchIndexableResource;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search/SearchIndexableResources$1;->compare(Landroid/provider/SearchIndexableResource;Landroid/provider/SearchIndexableResource;)I

    move-result v0

    return v0
.end method
