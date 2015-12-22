.class Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AllowDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/AllowDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AllowDataAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AllowDataAccess;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/operator/usa/AllowDataAccess;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "AllowDataAccess"

    const-string v1, "onChange(): RoamSettingsObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/operator/usa/AllowDataAccess;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AllowDataAccess;->finish()V

    return-void
.end method
