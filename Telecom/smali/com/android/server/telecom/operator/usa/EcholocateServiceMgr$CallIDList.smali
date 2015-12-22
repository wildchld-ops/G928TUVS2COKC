.class public Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;
.super Ljava/lang/Object;
.source "EcholocateServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallIDList"
.end annotation


# instance fields
.field public callid:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->callid:Ljava/lang/String;

    return-void
.end method
