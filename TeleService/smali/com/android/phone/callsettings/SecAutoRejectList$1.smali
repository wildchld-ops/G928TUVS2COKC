.class Lcom/android/phone/callsettings/SecAutoRejectList$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$1;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$1;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;
    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$000(Lcom/android/phone/callsettings/SecAutoRejectList;)Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$1;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectList;->stopContactQuery()V
    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$100(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    :cond_0
    return-void
.end method
