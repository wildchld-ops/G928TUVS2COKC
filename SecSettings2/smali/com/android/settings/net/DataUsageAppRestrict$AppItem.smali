.class public Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field public dataTotal:J

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/CharSequence;

.field public final uid:I

.field public wifiTotal:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    iput-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    iput-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    iput-object p2, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/net/DataUsageAppRestrict$AppItem;)I
    .locals 3

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->compareTo(Lcom/android/settings/net/DataUsageAppRestrict$AppItem;)I

    move-result v0

    return v0
.end method
