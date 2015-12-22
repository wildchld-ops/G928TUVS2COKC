.class final Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppsAlphabeticalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/daliviews/views/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method private longCompare(JJ)I
    .locals 3

    const/4 v0, 0x0

    cmp-long v1, p1, p3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, p1, p3

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I
    .locals 8

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v3, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    int-to-long v6, v3

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;->longCompare(JJ)I

    move-result v1

    :cond_1
    return v1

    :cond_2
    if-eq v0, v2, :cond_0

    if-nez v0, :cond_3

    const/4 v1, -0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/daliviews/views/Item;

    check-cast p2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;->compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method

.method public updateCollator()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method
