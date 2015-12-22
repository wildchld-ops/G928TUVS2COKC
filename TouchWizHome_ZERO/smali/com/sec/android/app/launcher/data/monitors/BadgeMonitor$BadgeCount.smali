.class public Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;
.super Ljava/lang/Object;
.source "BadgeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadgeCount"
.end annotation


# instance fields
.field mCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->mCount:I

    return-void
.end method


# virtual methods
.method public getBadgeCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->mCount:I

    return v0
.end method
