.class Lcom/android/phone/callsettings/KddiCallPrevention$3;
.super Landroid/database/ContentObserver;
.source "KddiCallPrevention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$3;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$3;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$100(Lcom/android/phone/callsettings/KddiCallPrevention;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$3;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$202(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z

    :cond_0
    return-void
.end method
