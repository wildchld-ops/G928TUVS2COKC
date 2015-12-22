.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
