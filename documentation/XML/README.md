# XML Containers

Beside the SAFE e.V. XML container there is another XML container without any namespaces. Unfortunately the creator/maintainer of this format is unknown, therefore it is currently not known which of the following properties of the data format are *mandatory* and which are *optional*.

## Single Meter Value Version

This XML data structure seems to be send via e.g. `OCPI` within the `signed_data` -> `signed_values` JSON array. In case of `OCPI` a lot of data is therefore redundant.

```
<?xml version="1.0" encoding="UTF-8" ?>
<signedMeterValue>
    <publicKey encoding="base64">wicwx2PPIlghxs5u/0K7DaYQmRo0XR2rpU8/OK+RyHTruvnTjll92gKkRfLmQIPc</publicKey>
    <meterValueSignature encoding="base64">GKC2AzlJPmYz8mhzf+BPesislFn+K3hbeCqtF50NLyy++p81QZ47iUdNO+pEJ41dAl8=</meterValueSignature>
    <signatureMethod>ECDSA192SHA256</signatureMethod>
    <encodingMethod>EDL</encodingMethod>
    <encodedMeterValue encoding="base64">CQFFTUgAAJZV1F7uV2MIjDnwAncCAAABAAERAP8e//+udQMAAAAAAl8EOyX6GG2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF3uV2MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</encodedMeterValue>
</signedMeterValue>
```

## Multiple Meter Value Version

This XML data structure seems to be provided by some CPOs and EMPs within their user portals and combines at least the start and stop metering value.

```
<?xml version="1.0" encoding="UTF-8" ?>
<signedMeterValues>
    <signedMeterValue>
        <publicKey encoding="base64">wicwx2PPIlghxs5u/0K7DaYQmRo0XR2rpU8/OK+RyHTruvnTjll92gKkRfLmQIPc</publicKey>
        <meterValueSignature encoding="base64">GKC2AzlJPmYz8mhzf+BPesislFn+K3hbeCqtF50NLyy++p81QZ47iUdNO+pEJ41dAl8=</meterValueSignature>
        <signatureMethod>ECDSA192SHA256</signatureMethod>
        <encodingMethod>EDL</encodingMethod>
        <encodedMeterValue encoding="base64">CQFFTUgAAJZV1F7uV2MIjDnwAncCAAABAAERAP8e//+udQMAAAAAAl8EOyX6GG2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF3uV2MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</encodedMeterValue>
    </signedMeterValue>
    <signedMeterValue>
        <publicKey encoding="base64">wicwx2PPIlghxs5u/0K7DaYQmRo0XR2rpU8/OK+RyHTruvnTjll92gKkRfLmQIPc</publicKey>
        <meterValueSignature encoding="base64">jZgwXdnaNOyfXIoGt0Loixv3LJ09LVK6LBi3k3ta1dihx4nH6SL8CaRVYSIWVLa/Al8=</meterValueSignature>
        <signatureMethod>ECDSA192SHA256</signatureMethod>
        <encodingMethod>EDL</encodingMethod>
        <encodedMeterValue encoding="base64">CQFFTUgAAJZV1LAKWGMI3VXwAngCAAABAAERAP8e/0kQeQMAAAAAAl8EOyX6GG2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF3uV2MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</encodedMeterValue>
    </signedMeterValue>
</signedMeterValues>
```