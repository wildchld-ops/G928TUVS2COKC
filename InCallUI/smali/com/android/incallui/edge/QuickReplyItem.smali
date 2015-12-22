.class public Lcom/android/incallui/edge/QuickReplyItem;
.super Ljava/lang/Object;
.source "QuickReplyItem.java"


# instance fields
.field public URI:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/edge/QuickReplyItem;->URI:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/incallui/edge/QuickReplyItem;->timestamp:J

    return-void
.end method
