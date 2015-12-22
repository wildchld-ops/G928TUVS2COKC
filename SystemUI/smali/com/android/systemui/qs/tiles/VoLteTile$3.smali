.class Lcom/android/systemui/qs/tiles/VoLteTile$3;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$402(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    :cond_0
    return-void
.end method
