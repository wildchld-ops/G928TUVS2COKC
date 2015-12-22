.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateMultiSIMLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MultiSIMView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/MultiSIMView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MultiSIMView;->setWillBeGone(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    # invokes: Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    return-void
.end method
