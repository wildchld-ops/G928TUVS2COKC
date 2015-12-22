.class final Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;
.super Ljava/lang/Object;
.source "WiFiHotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    return-void
.end method


# virtual methods
.method public onHotspotChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    return-void
.end method
