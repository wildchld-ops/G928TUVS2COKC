.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->istoastshowing:Z

    return-void
.end method
