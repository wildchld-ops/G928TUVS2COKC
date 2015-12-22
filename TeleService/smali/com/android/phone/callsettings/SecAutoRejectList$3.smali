.class Lcom/android/phone/callsettings/SecAutoRejectList$3;
.super Landroid/database/ContentObserver;
.source "SecAutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$3;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$3;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectList;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$200(Lcom/android/phone/callsettings/SecAutoRejectList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$3;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/SecAutoRejectList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$302(Lcom/android/phone/callsettings/SecAutoRejectList;Z)Z

    :cond_0
    return-void
.end method
