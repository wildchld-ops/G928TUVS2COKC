.class Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$1;
.super Ljava/lang/Object;
.source "UserDetailView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$1;->this$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$1;->this$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUserSwitchProcessing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->access$002(Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Z)Z

    return-void
.end method
