.class Lcom/ime/implement/setting/SettingsSplitRatioController$2;
.super Ljava/lang/Object;
.source "SettingsSplitRatioController.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SettingsSplitRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SettingsSplitRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$2;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.getAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
