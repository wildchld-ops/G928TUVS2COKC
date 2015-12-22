.class public Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;
.super Ljava/security/Provider;
.source "WifiHs20OCSPStaplingProvider.java"


# static fields
.field private static final WifiHs20OCSPStaplingProvider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;->WifiHs20OCSPStaplingProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "OCSPStaplingProvider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "Samsung ocsp stapling provider with mandatory certificate revocation check"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider$1;-><init>(Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;->setup()V

    return-void
.end method

.method private setup()V
    .locals 2

    const-string v0, "SSLContext.HS20"

    const-class v1, Lcom/android/org/conscrypt/HS20SSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
