.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;
.super Ljava/lang/Object;
.source "SViewCoverShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortcutItem"
.end annotation


# instance fields
.field public mContainerId:I

.field public mIconId:I

.field public mTitleId:I

.field public mType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mType:I

    iput p2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mContainerId:I

    iput p3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mIconId:I

    iput p4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mTitleId:I

    return-void
.end method
