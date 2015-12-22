.class Lcom/android/systemui/volume/ZenModePanel$10$1;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel$10;->onSelected(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/ZenModePanel$10;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel$10;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$10$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$10;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel$10$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$10;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10$1;->val$value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    return-void
.end method
