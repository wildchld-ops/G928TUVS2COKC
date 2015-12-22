.class Lcom/android/phone/callsettings/KddiCallPrevention$9;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$9;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$9;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v0, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method
