.class final Lcom/sec/android/app/launcher/providers/PageSettingsProvider$1;
.super Ljava/lang/Object;
.source "PageSettingsProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->sortPages(Ljava/util/List;)V
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
        "Lcom/sec/android/app/launcher/data/PageItem;",
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
.method public compare(Lcom/sec/android/app/launcher/data/PageItem;Lcom/sec/android/app/launcher/data/PageItem;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/PageItem;->getPageOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/PageItem;->getPageOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/launcher/data/PageItem;

    check-cast p2, Lcom/sec/android/app/launcher/data/PageItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$1;->compare(Lcom/sec/android/app/launcher/data/PageItem;Lcom/sec/android/app/launcher/data/PageItem;)I

    move-result v0

    return v0
.end method
