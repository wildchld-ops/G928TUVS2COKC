.class Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public activate:Z

.field public contact_name:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public matched:I

.field public reject_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->date:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    iput p5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->matched:I

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mDefaultName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$1700(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->contact_name:Ljava/lang/String;

    return-void
.end method
