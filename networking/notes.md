# Day 1

Started learning basic network diagnostics.

- Tested ping latency
- Learned about packet loss
# Day 2 - Traceroute Analysis

## Objective
Analyze network routing path and latency behavior

---

## Test Targets
- google.com
- cloudflare.com
- 8.8.8.8

---

## Traceroute Results

### google.com
- Total hops: 12
- First latency spike: Hop 6
- Notes:
  - Latency increases from 18ms → 32ms at hop 6
  - Route stabilizes after hop 8

### cloudflare.com
- Total hops: 10
- Path difference:
  - Shorter path compared to google
  - Lower latency overall (~15ms avg)

### 8.8.8.8
- Observations:
  - Similar path to google
  - Slightly more stable latency

---

## MTR Results

### google.com
- Avg latency: 24 ms
- Packet loss: 0.0 %
- Best: 12 ms
- Worst: 41 ms
- Stability:
  - Generally stable, minor jitter

---
# Day 3 - VPS Network Evaluation

## Objective
Evaluate VPS network performance and routing quality using multiple metrics.

---

## Test Scope
- Local → VPS connection
- VPS → Internet connectivity
- General network stability and performance

---

## Metrics

- Latency
- Packet loss
- Jitter
- Routing path
- TCP performance
- Bandwidth

---

## 1. Ping Test (Local → VPS)

- Min latency: 18 ms
- Avg latency: 32 ms
- Max latency: 68 ms
- Jitter (stddev): 11 ms

Analysis:
- Latency is within acceptable range
- Moderate jitter, but stable overall

---

## 2. Traceroute (Local → VPS)

- Total hops: 13

Observations:
- No major detours
- Gradual latency increase across hops
- Likely direct regional routing

---

## 3. MTR Results

- Avg latency: 30 ms
- Packet loss: 0.2 %
- Worst latency: 52 ms

Analysis:
- Very low packet loss
- Stable route with minor fluctuations

---

## 4. VPS → Internet (Outbound Test)

### traceroute google.com

- Hops: 9

Observations:
- Short path to major backbone
- No routing anomalies

---

### MTR (google.com)

- Avg latency: 22 ms
- Packet loss: 0.0 %
- Stability: high

---

## 5. TCP Performance

- Connection time: 0.08 s
- Time to first byte: 0.21 s
- Total request time: 0.45 s

Analysis:
- Fast connection setup
- Responsive server-side performance

---

## 6. Bandwidth (Estimated)

- Download: ~150–200 Mbps
- Upload: ~80–120 Mbps

---

## 7. IP Quality (General)

- Type: Datacenter IP
- Region: US-West
- Risk level: Low (no abnormal behavior observed)

---

## Analysis

1. Network stability:
   - Stable with minimal packet loss

2. Routing quality:
   - Efficient routing with low hop count

3. Performance:
   - Suitable for real-time applications

---

## Conclusion

- VPS Network Quality: GOOD
- Suitable for:
  - Proxy / VLESS
  - Streaming services
  - API access

---

## Security Note

All IP addresses and sensitive configuration details are replaced with placeholders.

---

## Next Step

- Compare multiple VPS providers
- Build automated scoring system
- Integrate AI-based analysis
## Analysis

1. Bottleneck location:
   - Minor latency increase at mid-route (likely ISP backbone)

2. Routing behavior:
   - Cloudflare uses more optimized CDN routing (fewer hops)

3. Network quality:
   - Low latency, no packet loss, stable connection

---

## Conclusion

- Network path complexity: medium
- Stability: good
- Suitable for latency-sensitive applications

---

## Next Step

- Analyze VPS routing
- Compare different server locations
## Notes
This analysis is based on simulated but realistic network behavior.
