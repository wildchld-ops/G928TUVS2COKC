.class Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$3;
.super Ljava/lang/Object;
.source "SViewCoverMissedEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->finish()V

    return-void
.end method
