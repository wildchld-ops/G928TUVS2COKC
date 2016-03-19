.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;
.super Landroid/database/ContentObserver;
.source "SecRejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$000(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->access$102(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Z)Z

    :cond_0
    return-void
.end method
