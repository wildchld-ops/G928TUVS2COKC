.class Lcom/android/systemui/power/PowerUI$4;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "PowerUI"

    const-string v1, "Scover open"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "PowerUI"

    const-string v1, "Scover close"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    goto :goto_0
.end method
