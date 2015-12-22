.class Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "DeviceWipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceWipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceWipe;


# direct methods
.method private constructor <init>(Lcom/android/settings/DeviceWipe;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;->this$0:Lcom/android/settings/DeviceWipe;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DeviceWipe;Lcom/android/settings/DeviceWipe$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceWipe$RestoreApnUiHandler;-><init>(Lcom/android/settings/DeviceWipe;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    return-void
.end method
