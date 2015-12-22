.class Lcom/android/systemui/qs/tiles/LocationTile$2;
.super Lcom/android/systemui/qs/SecureSetting;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$200(Lcom/android/systemui/qs/tiles/LocationTile;)I

    move-result v2

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;I)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$102(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z

    const-string v0, "LocationTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$500(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$402(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$400(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$600(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$800(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$802(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method
